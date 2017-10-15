module H99.Q20 where

{-
  Remove the K'th element from a list.
  removeAt 2 "abcd" => ('b',"acd")
-}

import H99.Q17 (split)

removeAt :: Int -> [a] -> (a, [a])
removeAt n xs = case b of
                  [] -> error "index too large"
                  (y:ys) -> (y, a ++ ys)
  where (a, b) = split xs (n - 1)