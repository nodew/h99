module H99.Q15 where

{-
  Replicate the elements of a list a given number of times.
  repli "abc" 3 => "aaabbbccc"
-}

repli :: [a] -> Int -> [a]
repli [] _ = []
repli (x:xs) n = take n (repeat x) ++ repli xs n

repli' :: [a] -> Int -> [a]
repli' xs n = xs >>= (\x -> take n $ repeat x)