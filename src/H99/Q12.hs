module H99.Q12 where

{-
  Decode a run-length encoded list.
  Given a run-length code list generated as specified in problem 11. Construct its uncompressed version.

  decodeModified [Multiple 4 'a',Single 'b',Multiple 2 'c',
                  Multiple 2 'a',Single 'd',Multiple 4 'e']
  => "aaaabccaadeeee"
-}

import H99.Q11 (Encode(..))

decodeModified :: Eq a => [Encode a] -> [a]
decodeModified []     = []
decodeModified (x:xs) = case x of
  Multiple n w -> take n (repeat w) ++ decodeModified xs
  Single w     -> w : decodeModified xs