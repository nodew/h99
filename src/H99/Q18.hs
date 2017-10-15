module H99.Q18 where

{-
  Extract a slice from a list.
  Given two indices, i and k, the slice is the list containing the elements
  between the i'th and k'th element of the original list (both limits included).
  Start counting the elements with 1.

  slice ['a','b','c','d','e','f','g','h','i','k'] 3 7
  => "cdefg"

-}

slice :: [a] -> Int -> Int -> [a]
slice xs start end
  | start < 0    = []
  | start >= end = []
  | otherwise    = go xs [] 1
  where go [] acc _ = reverse acc
        go (y:ys) acc count
          | count == end  = reverse (y : acc)
          | count <= start = go ys acc (count + 1)
          | otherwise     = go ys (y:acc) (count + 1)

slice' :: [a] -> Int -> Int -> [a]
slice' xs start end
  | start < 0    = []
  | start >= end = []
  | otherwise    = take (end - start) $ drop start xs