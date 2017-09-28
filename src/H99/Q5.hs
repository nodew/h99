module H99.Q5 where

{-
  Reverse a list.
  myReverse "A man, a plan, a canal, panama!"
  => "!amanap ,lanac a ,nalp a ,nam A"
  myReverse [1,2,3,4]
  => [4,3,2,1]
-}

myReverse :: [a] -> [a]
myReverse = go []
  where go acc [] = acc
        go acc (x:xs) = go (x:acc) xs

