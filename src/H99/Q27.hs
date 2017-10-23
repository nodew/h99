module H99.Q27 where

{-
  Group the elements of a set into disjoint subsets.

  a) In how many ways can a group of 9 people work in 3 disjoint subgroups of
  2, 3 and 4 persons? Write a function that generates all the possibilities
  and returns them in a list.

  b) Generalize the above predicate in a way that we can specify a list of
  group sizes and the predicate will return a list of groups.

  group [2,3,4] ["aldo","beat","carla","david","evi","flip","gary","hugo","ida"]
  [[["aldo","beat"],["carla","david","evi"],["flip","gary","hugo","ida"]],...]
  (altogether 1260 solutions)

  group [2,2,5] ["aldo","beat","carla","david","evi","flip","gary","hugo","ida"]
  [[["aldo","beat"],["carla","david"],["evi","flip","gary","hugo","ida"]],...]
  (altogether 756 solutions)
-}

import H99.Q26
import Data.List hiding (group)

group :: Eq a => [Int] -> [a] -> [[[a]]]
group a b = if sum a /= length b then error "error input" else group' a b
  where group' [] []     = [[]]
        group' (x:xs) ys = do
          combination <- combinations x ys
          let restItems = ys \\ combination
          groups <- group' xs restItems
          return $ combination : groups