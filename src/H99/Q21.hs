module H99.Q21 where

{-
  Insert an element at a given position into a list.

  insertAt 'X' "abcd" 2 => "aXbcd"
-}

import H99.Q17 (split)

insertAt :: a -> [a] -> Int -> [a]
insertAt x xs 0 = x : xs
insertAt x xs n = case b of
                  [] -> error "index too large"
                  _  -> a ++ (x : b)
  where (a, b) = split xs (n - 1)

insertAt' :: a -> [a] -> Int -> [a]
insertAt' x xs 0 = x : xs
insertAt' x xs n = go xs 1
  where go [] count
          | count /= n = error "index too large"
          | otherwise  = [x]
        go lst@(y:ys) count = if count == n then x : lst
                              else y : go ys (count + 1)