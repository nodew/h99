module H99.Q39 where

{-
  A list of prime numbers.
  Given a range of integers by its lower and upper limit,
  construct a list of all prime numbers in that range.

  primesR 10 20 => [11,13,17,19]
-}

import H99.Q31 (primes)

primesR :: Int -> Int -> [Int]
primesR start end = takeWhile (< end) $ dropWhile (< start) primes