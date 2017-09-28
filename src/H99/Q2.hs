module H99.Q2 (
  myButLast,
  myButLast'
) where
{-
  Find the last but one element of a list.

  myButLast [1,2,3,4]  => 3
  myButLast ['a'..'z'] => 'y'
-}

myButLast :: [a] -> a
myButLast (x:y:[]) = x
myButLast (x:xs)   = myButLast xs
myButLast _        = error "error input"

myButLast' :: [a] -> a
myButLast' = head . tail . reverse
