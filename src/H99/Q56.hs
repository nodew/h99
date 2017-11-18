module H99.Q56 where

{-
  (**) Symmetric binary trees
  Let us call a binary tree symmetric if you can draw a vertical line
  through the root node and then the right subtree is the mirror image
  of the left subtree. Write a predicate symmetric/1 to check whether
  a given binary tree is symmetric. Hint: Write a predicate mirror/2
  first to check whether one tree is the mirror image of another.
  We are only interested in the structure, not in the contents of the nodes.

  symmetric (Branch 'x' (Branch 'x' Empty Empty) Empty)
  => False
  symmetric (Branch 'x' (Branch 'x' Empty Empty) (Branch 'x' Empty Empty))
  => True
-}

import H99.Q55 (Tree(..))

symmetric :: Tree Char -> Bool
symmetric Empty = True
symmetric (Branch _ l r) = mirror l r

mirror :: Tree t -> Tree t -> Bool
mirror Empty          Empty              = True
mirror (Branch _ la ra) (Branch _ lb rb) = mirror la rb && mirror lb ra
mirror _              _                  = False