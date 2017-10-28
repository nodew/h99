module H99.Q41 where

{-
  Given a range of integers by its lower and upper limit,
  print a list of all even numbers and their Goldbach composition.

  In most cases, if an even number is written as the sum of two prime numbers,
  one of them is very small. Very rarely, the primes are both bigger than say 50.
  Try to find out how many such cases there are in the range 2..3000.

  goldbachList 9 20 => [(3,7),(5,7),(3,11),(3,13),(5,13),(3,17)]
  goldbachList' 4 2000 50 => [(73,919),(61,1321),(67,1789),(61,1867)]

-}
import H99.Q40 (goldbach)

goldbachList :: Int -> Int -> [(Int, Int)]
goldbachList start end
  | even start = map goldbach [start, start+2..end]
  | otherwise  = map goldbach [start+1, start+3..end]

goldbachList' :: Int -> Int -> Int -> [(Int, Int)]
goldbachList' start end testN = let lst = goldbachList start end
    in filter (\(a, b) -> and [a > testN, b > testN]) lst
