module H99.Q22 where

{-
  Create a list containing all integers within a given range.

  range 4 9 => [4,5,6,7,8,9]
-}


range :: (Integral a) => a -> a -> [a]
range x y
  | x >= y    = []
  | otherwise = x : range (x + 1) y

range' :: Int -> Int -> [Int]
range' x y = take (y - x) [x..y]