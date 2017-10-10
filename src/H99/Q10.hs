module H99.Q10 where

{-
  Run-length encoding of a list. Use the result of problem P09 to
  implement the so-called run-length encoding data compression method.
  Consecutive duplicates of elements are encoded as lists (N E)
  where N is the number of duplicates of the element E.

  encode "aaaabccaadeeee"
  => [(4,'a'),(1,'b'),(2,'c'),(2,'a'),(1,'d'),(4,'e')]
-}

encode :: Eq a => [a] -> [(Int, a)]
encode [] = []
encode (y:[]) = [(1, y)]
encode (y:ys) = let acc@((n, w) : rest) = encode ys
                in if w == y then (n + 1, y) : rest else (1, y) : acc