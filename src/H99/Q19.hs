module H99.Q19 where

{-
  Rotate a list N places to the left.
  Hint: Use the predefined functions length and (++).

  rotate ['a','b','c','d','e','f','g','h'] 3
  => "defghabc"

  rotate ['a','b','c','d','e','f','g','h'] (-2)
  => "ghabcdef"
-}

rotate :: [a] -> Int -> [a]
rotate xs n = t ++ h
  where len = length xs
        pos = (if n >= 0 then n else len + n) `mod` len
        h = take pos xs
        t = drop pos xs