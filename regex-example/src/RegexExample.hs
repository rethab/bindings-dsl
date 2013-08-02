{-# LANGUAGE DeriveDataTypeable #-}

module RegexExample (parse) where
import Control.Exception
import Control.Monad
import Data.Typeable
import Foreign
import Foreign.C
import System.IO.Unsafe
import Bindings.Posix.Regex

parse :: String -> String -> [String]
parse = (System.IO.Unsafe.unsafePerformIO .) . parseIO

iF a b c = if a then b else c

newtype RegexException = RegexException String deriving (Show, Typeable)
instance Exception RegexException

throwRegexException :: Ptr C'regex_t -> CInt -> IO ()
throwRegexException preg errcode = do
	errbuf_size <- c'regerror errcode preg nullPtr 0
	allocaBytes (fromEnum errbuf_size) $ \errbuf -> do
		c'regerror errcode preg errbuf errbuf_size
		regerror <- peekCString errbuf
		throwIO $ RegexException regerror

withRegexPtr :: String -> (Ptr C'regex_t -> IO a) -> IO a
withRegexPtr regex exec =
	alloca $ \preg ->
	withCString regex $ \pattern ->
  let
	compileAndExec = do
		errcode <- c'regcomp preg pattern cflags
		when (errcode /= 0) $ throwRegexException preg errcode
		exec preg
	cflags = c'REG_EXTENDED .|. c'REG_NEWLINE
  in finally compileAndExec (c'regfree preg)

parseIO :: String -> String -> IO [String]
parseIO regex text =
	withRegexPtr regex $ \preg ->
	withCString text $ \ctext ->
	alloca $ \pmatch ->
  let
	getMatches :: IO (Int,Int)
	getMatches = do
		rm_so <- peek $ p'regmatch_t'rm_so pmatch
		rm_eo <- peek $ p'regmatch_t'rm_eo pmatch
		return (fromEnum rm_so, fromEnum rm_eo)
	findMatches :: Int -> [String] -> IO [String]
	findMatches pos list = do
		status <- c'regexec preg (advancePtr ctext pos) 1 pmatch eflags
		iF (status /= 0) (return list) $ do
			(so,eo) <- getMatches
			let cmatch = advancePtr ctext (pos + so)
			char <- peek cmatch
			iF (char == 0) (return list) $ do
				match <- peekCStringLen (cmatch, eo - so)
				let (nextPos,nextList) = iF (null match)
					(pos + so + 1, list)
					(pos + eo, match:list)
				findMatches nextPos nextList
	  where
		eflags = iF (pos == 0) 0 c'REG_NOTBOL
  in liftM reverse $ findMatches 0 []
