module H99.Q23 where

import System.Random
import System.IO.Unsafe
{-
  Extract a given number of randomly selected elements from a list.

  rnd_select "abcdefgh" 3 >>= putStrLn
  => eda
-}

import H99.Q20 (removeAt)

getRandInt :: Int -> Int
getRandInt n = unsafePerformIO (getStdRandom (randomR (1, n)))

rnd_select :: [a] -> Int -> [a]
rnd_select [] _ = []
rnd_select xs 0 = []
rnd_select xs n = x : rnd_select rest (n - 1)
  where len = length xs
        index = getRandInt len
        x = xs !! (index - 1)
        rest = snd $ removeAt index xs
