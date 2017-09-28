module H99.Q4 (
  myLength,
  myLength'
) where

{-
  Find the number of elements of a list.
  myLength [123, 456, 789] => 3
  myLength "Hello, world!" => 13
-}

myLength :: [a] -> Int
myLength = go 0
  where go n [] = n
        go n (_:xs) = go (n + 1) xs

myLength' :: [a] -> Int
myLength' = foldr (\_ n -> n + 1) 0