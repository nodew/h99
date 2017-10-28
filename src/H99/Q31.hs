module H99.Q31 where
{-
  Determine whether a given integer number is prime.

  isPrime 7 => True
-}

primes :: [Int]
primes = 2 : getPrimes [3, 5..]
  where getPrimes (x:xs) = x : getPrimes [n | n <- xs, if n >= x * x then n `mod` x /= 0 else True]

isPrime :: Int -> Bool
isPrime n = last p == n
  where p = takeWhile (<= n) primes

