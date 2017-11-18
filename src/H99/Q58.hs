module H99.Q58 where

{-
  Generate-and-test paradigm

  Apply the generate-and-test paradigm to construct all symmetric,
  completely balanced binary trees with a given number of nodes.
  symCbalTrees 5 =>
  [Branch 'x' (Branch 'x' Empty (Branch 'x' Empty Empty)) (Branch 'x' (Branch 'x' Empty Empty) Empty),
  Branch 'x' (Branch 'x' (Branch 'x' Empty Empty) Empty) (Branch 'x' Empty (Branch 'x' Empty Empty))]
-}

import H99.Q55 (Tree(..), cbalTree)
import H99.Q56 (symmetric)

symCbalTrees :: Int -> [Tree Char]
symCbalTrees n = filter (\t -> symmetric t) $ cbalTree n