{-# LANGUAGE BangPatterns #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE TupleSections #-}
{-# LANGUAGE TypeApplications #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
{-# OPTIONS_GHC -Wno-unused-top-binds #-}

import Control.Monad (forM_, replicateM, unless, when)
import Data.Array (Array, assocs, bounds, elems, listArray, (!))
import Data.Array.Unboxed (UArray)
import Data.Bits (bit, popCount, shiftL, shiftR, testBit, xor, (.&.), (.|.))
import Data.ByteString.Char8 (ByteString)
import qualified Data.ByteString.Char8 as BS
import Data.Char (chr, isAlpha, isDigit, ord)
import qualified Data.IntMap.Strict as IntMap
import qualified Data.IntSet as IntSet
import Data.List (group, nub, permutations, sort, sortBy, subsequences)
import qualified Data.Map.Strict as Map
import Data.Maybe (catMaybes, fromJust, fromMaybe, mapMaybe)
import qualified Data.Sequence as Seq
import qualified Data.Set as Set
import Data.Tuple (swap)
import qualified Data.Vector as V
import qualified Data.Vector.Unboxed as UV

------------------------------------------------------------
-- Main
------------------------------------------------------------

main :: IO ()
main = do
  (a, b) <- readInt2 <$> BS.getLine
  print (a + b)

------------------------------------------------------------
-- Input
------------------------------------------------------------

readInt :: ByteString -> Int
readInt = fst . fromJust . BS.readInt

readInts :: ByteString -> [Int]
readInts = map readInt . BS.words

readInt2 :: ByteString -> (Int, Int)
readInt2 s = case readInts s of
  [x, y] -> (x, y)
  _ -> error "readInt2: invalid input"

readInt3 :: ByteString -> (Int, Int, Int)
readInt3 s = case readInts s of
  [x, y, z] -> (x, y, z)
  _ -> error "readInt3: invalid input"

readInt4 :: ByteString -> (Int, Int, Int, Int)
readInt4 s = case readInts s of
  [x, y, z, w] -> (x, y, z, w)
  _ -> error "readInt4: invalid input"

------------------------------------------------------------
-- Output
------------------------------------------------------------

yesno :: Bool -> String
yesno True = "Yes"
yesno False = "No"

putYesNo :: Bool -> IO ()
putYesNo = putStrLn . yesno
