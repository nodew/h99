module H99.Q3 (
  elementAt
) where

{-
  Find the K'th element of a list. The first element in the list is number 1.
-}

elementAt :: [a] -> Int -> a
elementAt (x:_) 1 = x
elementAt (_:xs) n
  | n < 1 = error "out of bounds"
  | otherwise = elementAt xs $ n - 1