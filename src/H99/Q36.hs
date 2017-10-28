module H99.Q36 where

{-
  Determine the prime factors of a given positive integer.
  Construct a list containing the prime factors and their multiplicity.

  prime_factors_mult 315 => [(3,2),(5,1),(7,1)]
-}

import Data.List (group)
import H99.Q35 (primeFactors)

prime_factors_mult :: Int -> [(Int, Int)]
prime_factors_mult n = map (\x -> (head x, length x)) (group $ primeFactors n)
