module H99.Q16 where

{-
  Drop every N'th element from a list.

  dropEvery "abcdefghik" 3 => "abdeghk"
-}

dropEvery :: [a] -> Int -> [a]
dropEvery xs n = go xs 1
  where go [] _         = []
        go (y:ys) count = if count == n then go ys 1 else y : go ys (count + 1)