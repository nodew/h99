module H99.Q7 where

{-
  Flatten a nested list structure
  NestedList a = Elem a | List [NestedList a]
-}

data NestedList a = Elem a | List [NestedList a]

flatten :: NestedList a -> [a]
flatten (Elem x) = [x]
flatten (List xs) = foldr (\x acc -> flatten x ++ acc) [] xs