module H99.Q57 where

{-
  Binary search trees (dictionaries)

  Use the predicate add/3, developed in chapter 4 of the course, to write
  a predicate to construct a binary search tree from a list of integer numbers.

  construct [3, 2, 5, 7, 1]
  => Branch 3 (Branch 2 (Branch 1 Empty Empty) Empty) (Branch 5 Empty (Branch 7 Empty Empty))

  symmetric . construct $ [5, 3, 18, 1, 4, 12, 21] => True
  symmetric . construct $ [3, 2, 5, 7, 1] => True
-}

import H99.Q55 (Tree(..))

construct :: Ord a => [a] -> Tree a
construct []      = Empty
construct xs      = foldr (\x acc -> insert acc x) Empty xs

insert :: Ord a => Tree a -> a -> Tree a
insert Empty          x = Branch x Empty Empty
insert (Branch n l r) x = if x <= n then
                            Branch n (insert l x) r
                          else
                            Branch n l (insert r x)