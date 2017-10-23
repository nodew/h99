module H99.Q28 where

{-
  Sorting a list of lists according to length of sublists

  a) We suppose that a list contains elements that are lists themselves.
  The objective is to sort the elements of this list according to their length.
  E.g. short lists first, longer lists later, or vice versa.

  lsort ["abc","de","fgh","de","ijkl","mn","o"]
  => ["o","de","de","mn","abc","fgh","ijkl"]

  b) Again, we suppose that a list contains elements that are lists themselves.
  But this time the objective is to sort the elements of this list according to
  their length frequency; i.e., in the default, where sorting is done ascendingly,
  lists with rare lengths are placed first, others with a more frequent length come later.

  lfsort ["abc", "de", "fgh", "de", "ijkl", "mn", "o"]
  => ["ijkl","o","abc","fgh","de","de","mn"]

-}

import Data.List

lsort :: Ord a => [[a]] -> [[a]]
lsort = sortBy $ \a b -> length a `compare` length b

lfsort :: Ord a => [[a]] -> [[a]]
lfsort = concat . lsort . groupBy (\a b -> length a == length b) . lsort