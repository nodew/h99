module H99.Q26 where

{-
  Generate the combinations of K distinct objects chosen from the N elements of a list.
  In how many ways can a committee of 3 be chosen from a group of 12 people?
  We all know that there are C(12,3) = 220 possibilities
  (C(N,K) denotes the well-known binomial coefficients).
  For pure mathematicians, this result may be great.
  But we want to really generate all the possibilities in a list.

  combinations 3 "abcdef" => ["abc","abd","abe",...]
-}

combinations :: Int -> [a] -> [[a]]
combinations 0 []      = [[]]
combinations _ []      = []
combinations n (x:xs) = map (x:) sub ++ combinations n xs
  where sub = combinations (n - 1) xs
