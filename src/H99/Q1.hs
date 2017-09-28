module H99.Q1 (
  myLast,
  myLast'
) where

{-
   Find the last element of a list.
   myLast [1,2,3,4] => 4
   myLast ['x','y','z'] => 'z'
-}

myLast :: [a] -> a
myLast (a:[]) = a
myLast (a:xs) = myLast xs
myLast _      = error "error input"

myLast' :: [a] -> a
myLast' = foldr1 (const id)