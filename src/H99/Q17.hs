module H99.Q17 where

{-
  Split a list into two parts; the length of the first part is given.
  Do not use any predefined predicates.
  split "abcdefghik" 3 => ("abc", "defghik")
-}

split :: [a] -> Int -> ([a], [a])
split xs n
  | n <= 0 = ([], xs)
  | otherwise = go xs [] 0
  where go [] acc _         = (reverse acc, [])
        go (y:ys) acc count
          | n == count = (reverse acc, y : ys)
          | otherwise  = go ys (y : acc) (count + 1)

split' :: [a] -> Int -> ([a], [a])
split' xs n = (take n xs, drop n xs)