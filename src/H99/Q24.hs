module H99.Q24 where

import System.Random
import System.IO.Unsafe
import Data.List
{-
  Draw N different random numbers from the set 1..M.

  diff_select 6 49 => [23,1,17,33,21,37]
-}

import H99.Q23 (rnd_select)

getRandList :: Int -> [Int]
getRandList m = unsafePerformIO $ do
  g <- getStdGen
  return $ randomRs (1, m) g

diff_select :: Int -> Int -> [Int]
diff_select n m = rnd_select [1..m] n

diff_select' :: Int -> Int -> [Int]
diff_select' n m = take n . nub $ getRandList m