{-# LANGUAGE DeriveDataTypeable #-}

module RegexExample (parse) where
import Control.Exception
import Control.Monad
import Data.Typeable
import Foreign
import Foreign.C
import System.IO.Unsafe
import Bindings.Posix.Regex

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

parseLineIO :: String -> String -> IO [String]
parseLineIO regex line =
	withRegexPtr regex $ \preg ->
	withCString line $ \cline ->
	alloca $ \pmatch ->
  let
	getMatches :: IO (Int,Int)
	getMatches = do
		rm_so <- peek $ p'regmatch_t'rm_so pmatch
		rm_eo <- peek $ p'regmatch_t'rm_eo pmatch
		return (fromEnum rm_so, fromEnum rm_eo)
	findMatches :: Int -> [String] -> IO [String]
	findMatches pos list = do
                let string = advancePtr cline pos
		status <- c'regexec preg string 1 pmatch eflags
		iF (status /= 0) (return list) $ do
			(rm_so,rm_eo) <- getMatches
			let cmatch = advancePtr string rm_so
			char <- peek cmatch
			iF (char == 0) (return list) $ do
				match <- peekCStringLen (cmatch, rm_eo - rm_so)
				let (nextPos,nextList) = iF (null match)
					(pos + rm_so + 1, list)
					(pos + rm_eo, match:list)
				findMatches nextPos nextList
	  where
		eflags = iF (pos == 0) 0 c'REG_NOTBOL
  in liftM reverse $ findMatches 0 []

parseLine :: String -> String -> [String]
parseLine = (System.IO.Unsafe.unsafePerformIO .) . parseLineIO

parse :: String -> String -> [String]
parse regex text = concatMap (parseLine regex) (lines text)
