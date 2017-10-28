module H99.Q40 where

{-
  Goldbach's conjecture.
  Goldbach's conjecture says that every positive even number greater than 2
  is the sum of two prime numbers. Example: 28 = 5 + 23. It is one of the most
  famous facts in number theory that has not been proved to be correct in
  the general case. It has been numerically confirmed up to very large numbers
  (much larger than we can go with our Prolog system). Write a predicate to
  find the two prime numbers that sum up to a given even integer.

  goldbach 28 => (5, 23)
-}
import H99.Q31 (primes, isPrime)

goldbach :: Int -> (Int, Int)
goldbach n = (p1, n - p1)
  where ps = takeWhile (< n) primes
        p1 = head $ filter (\x -> isPrime $ n - x) ps
