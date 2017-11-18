module H99.Q55 where

{-
  Construct completely balanced binary trees
  In a completely balanced binary tree, the following property holds for
  every node: The number of nodes in its left subtree and the number of nodes
  in its right subtree are almost equal, which means their difference
  is not greater than one.

  Write a function cbal-tree to construct completely balanced binary trees
  for a given number of nodes. The predicate should generate all solutions
  via backtracking. Put the letter 'x' as information into all nodes of the tree.
-}

data Tree a = Empty | Branch a (Tree a) (Tree a) deriving (Show, Eq)

leaf :: a -> Tree a
leaf x = Branch x Empty Empty

cbalTree :: Integral a => a -> [Tree Char]
cbalTree 0 = [Empty]
cbalTree 1 = [leaf 'x']
cbalTree n = if n `mod` 2 == 1 then
               [ Branch 'x' l r | l <- cbalTree ((n - 1) `div` 2),
                                  r <- cbalTree ((n - 1) `div` 2) ]
             else
               concat [ [Branch 'x' l r, Branch 'x' r l] | l <- cbalTree ((n - 1) `div` 2),
                                                           r <- cbalTree (n `div` 2) ]


