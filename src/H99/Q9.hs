module H99.Q9 where
import Data.List
{-
  Pack consecutive duplicates of list elements into sublists.
  If a list contains repeated elements they should be placed in separate sublists.

  pack ['a', 'a', 'a', 'a', 'b', 'c', 'c', 'a', 'a', 'd', 'e', 'e', 'e', 'e']
  => ["aaaa","b","cc","aa","d","eeee"]
-}

pack :: Eq a => [a] -> [[a]]
pack lst@(x:xs) = reverse $ foldl' (\acc@(l:rest) (a, b) ->
                                      if a /= b then
                                        [b]:acc
                                      else (b:l):rest)
                                   [[x]] $ zip lst xs
