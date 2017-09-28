module H99.Q3 (
  elementAt
) where

{-
  Find the K'th element of a list. The first element in the list is number 1.
-}

elementAt :: [a] -> Int -> a
elementAt _ 0     = error "index too small"
elementAt [] _    = error "index too large"
elementAt (x:_) 1 = x
elementAt (_:xs) n
  | n < 1 = error "index too large"
  | otherwise = elementAt xs $ n - 1