module H99.Q59 where

{-
  Construct height-balanced binary trees

  In a height-balanced binary tree, the following property holds for
  every node: The height of its left subtree and the height of its right
  subtree are almost equal, which means their difference is not greater than one.

  Construct a list of all height-balanced binary trees with the given element
  and the given maximum height.

  take 4 $ hbalTree 'x' 3
  => [Branch 'x' (Branch 'x' Empty Empty) (Branch 'x' Empty (Branch 'x' Empty Empty)),
      Branch 'x' (Branch 'x' Empty Empty) (Branch 'x' (Branch 'x' Empty Empty) Empty),
      Branch 'x' (Branch 'x' Empty Empty) (Branch 'x' (Branch 'x' Empty Empty) (Branch 'x' Empty Empty)),
      Branch 'x' (Branch 'x' Empty (Branch 'x' Empty Empty)) (Branch 'x' Empty Empty)]
-}

import H99.Q55 (Tree(..))

hbalTree :: a -> Int -> [Tree a]
hbalTree _ 0 = [Empty]
hbalTree x 1 = [Branch x Empty Empty]
hbalTree x h = [Branch x l r |
        (hl, hr) <- [(h - 2, h - 1), (h - 1, h - 1), (h - 1, h - 2)],
        l <- hbalTree x hl, r <- hbalTree x hr]
