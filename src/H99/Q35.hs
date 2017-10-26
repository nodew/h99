module H99.Q35 where

{-
  Determine the prime factors of a given positive integer.
  Construct a flat list containing the prime factors in ascending order.

  primeFactors 315 => [3, 3, 5, 7]
-}

import H99.Q31 (primes)

primeFactors :: Int -> [Int]
primeFactors n = go n primes
  where go a primeList@(p:rest)
          | a == 1         = []
          | a `mod` p == 0 = p : go (a `div` p) primeList
          | otherwise      = go a rest