{-# LANGUAGE DeriveDataTypeable #-}

module RegexExample (parse) where

-- from base
import Control.Exception (Exception, finally, throwIO)
import Control.Monad (guard, liftM, when)
import Data.Bits ((.|.))
import Data.Typeable (Typeable)
import Foreign.C.Types (CInt)
import Foreign.C.String (peekCString, peekCStringLen, withCString)
import Foreign.Marshal.Alloc (alloca, allocaBytes)
import Foreign.Marshal.Array (advancePtr)
import Foreign.Ptr (nullPtr, Ptr)
import Foreign.Storable (peek)
import System.IO.Unsafe (unsafePerformIO)

-- from transformers
import Control.Monad.IO.Class (liftIO)
import Control.Monad.Trans.Class (lift)
import Control.Monad.Trans.Maybe (MaybeT, runMaybeT)
import Control.Monad.Trans.Writer (WriterT, execWriterT, tell)

-- from bindings-posix
import Bindings.Posix.Regex (
    C'regex_t, c'regmatch_t'rm_so, c'regmatch_t'rm_eo,
    c'regexec, c'regerror, c'regcomp, c'regfree,
    c'REG_EXTENDED, c'REG_NEWLINE, c'REG_NOTBOL
  )

newtype RegexException = RegexException String deriving (Show, Typeable)
instance Exception RegexException

throwRegexException :: Ptr C'regex_t -> CInt -> IO ()
throwRegexException preg errcode = do
    errbuf_size <- c'regerror errcode preg nullPtr 0
    allocaBytes (fromEnum errbuf_size) $ \errbuf -> do
        c'regerror errcode preg errbuf errbuf_size
        peekCString errbuf >>= (throwIO . RegexException)

withRegex :: String -> (Ptr C'regex_t -> IO a) -> IO a
withRegex regex exec = 
    alloca $ \preg ->
    withCString regex $ \pattern ->
    do
        errcode <- c'regcomp preg pattern cflags
        when (errcode /= 0) $ throwRegexException preg errcode
        finally (exec preg) (c'regfree preg)
  where
    cflags = c'REG_EXTENDED .|. c'REG_NEWLINE

parseLine :: Ptr C'regex_t -> String -> IO [String]
parseLine preg line =
    withCString line $ \cline ->
    alloca $ \pmatch ->
  let
    findMatches :: Int -> MaybeT (WriterT [String] IO) ()
    findMatches pos = do
        status <- liftIO $ c'regexec preg (advancePtr cline pos) 1 pmatch eflags
        guard (status == 0)
        rm <- liftIO $ peek pmatch
        let so = pos + (fromEnum $ c'regmatch_t'rm_so rm)
        let eo = pos + (fromEnum $ c'regmatch_t'rm_eo rm)
        when (so < eo) $ do
            match <- liftIO $ peekCStringLen (advancePtr cline so, eo - so)
            lift $ tell [match]
        guard . (/= 0) =<< (liftIO $ peek (advancePtr cline eo))
        findMatches $ if so < eo then eo else eo + 1
      where
        eflags = if pos == 0 then 0 else c'REG_NOTBOL
  in execWriterT $ runMaybeT $ findMatches 0

parse :: String -> String -> [String]
parse regex text = unsafePerformIO $
    withRegex regex $ \preg -> liftM concat $ mapM (parseLine preg) (lines text)
