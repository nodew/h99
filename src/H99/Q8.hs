module H99.Q8 where
{-
  Eliminate consecutive duplicates of list elements.
  compress "aaaabccaadeeee" => "abcade"
-}

compress :: Eq a => [a] -> [a]
compress [] = []
compress lst@(x:xs) = (:) x $ foldr (\(a, b) acc -> if a /= b then a:acc else acc) [] $ zip xs lst
