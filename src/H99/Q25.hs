module H99.Q25 where

import System.Random
import System.IO.Unsafe
import Data.List
{-
  Generate a random permutation of the elements of a list.

  rnd_permu "abcdef" => "badcef"
-}

import H99.Q23 (rnd_select)

getRandList :: Int -> [Int]
getRandList m = unsafePerformIO $ do
  g <- getStdGen
  return $ randomRs (0, m - 1) g

rnd_permu :: [a] -> [a]
rnd_permu xs = indexs >>= \i -> return $ xs !! i
  where len       = length xs
        indexs    = take len . nub $ getRandList len

rnd_permu' :: [a] -> [a]
rnd_permu' xs = rnd_select xs $ length xs
