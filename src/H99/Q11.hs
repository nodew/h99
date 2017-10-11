module H99.Q11 where

{-
  Run-length encoding of a list. Use the result of problem P09 to
  implement the so-called run-length encoding data compression method.
  Only elements with duplicates are transferred as (N E) lists.
  where N is the number of duplicates of the element E.

  encodeModified "aaaabccaadeeee"
  => [Multiple 4 'a',Single 'b',Multiple 2 'c',
      Multiple 2 'a',Single 'd',Multiple 4 'e']
-}

data Encode a = Multiple Int a
              | Single a
  deriving (Show, Eq)

encode' :: Eq a => [a] -> [Encode a]
encode' [] = []
encode' (y:[]) = [Single y]
encode' (y:ys) = let acc@(w : _) = encode' ys
                 in case w of
                    Single a     -> test a y 1 acc
                    Multiple n a -> test a y n acc
  where test a b n acc@(_:rest) = if a == b then
                                    (Multiple (n + 1) b) : rest
                                  else (Single b) : acc
