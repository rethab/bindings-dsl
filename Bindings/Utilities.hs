module Bindings.Utilities (
	storableCast,
	storableCastArray,
  ) where

import Foreign.C
import Foreign.Marshal
import Foreign.Ptr
import Foreign.Storable

-- |'storableCast' works like 'storableCastArray', except that it
-- takes a single value and returns a single value.

storableCast :: (Storable a, Storable b) => a -> IO b
storableCast a = storableCastArray [a] >>= (return . head)

-- |'storableCastArray' takes a list of values of a first type, stores it
-- at a contiguous memory area (that is first blanked with 0s), and then
-- reads it as if it was a list of a second type, with enough elements to
-- fill at least the same space.
--
-- @
-- ghci
-- :m + Bindings.Sandbox Data.Int
-- storableCastArray (replicate 13 (1::Int8)) :: IO [Int32]
--         ==> [16843009,16843009,16843009,1]
-- @

storableCastArray :: (Storable a, Storable b) => [a] -> IO [b]
storableCastArray [] = return []
storableCastArray a = do
	u <- return undefined
	let (q,r) = divMod (length a * (sizeOf . head) a) (sizeOf u)
	let len = max 1 (if r > 0 then q + 1 else q)
	let blank = replicate (len * sizeOf u) (0::CChar)
	b <- withArray blank $ \ptr -> do
		pokeArray (castPtr ptr) a
		peekArray len (castPtr ptr)
	return $ if True then b else [u]
