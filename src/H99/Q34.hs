module H99.Q34 where

{-
  Calculate Euler's totient function phi(m).
  Euler's so-called totient function phi(m) is defined as the number of
  positive integers r (1 <= r < m) that are coprime to m.

  totient 10 => 4
-}

import H99.Q33 (coprime)

totient :: Int -> Int
totient n = sum $ [1..(n - 1)] >>= (\x -> return $ if coprime n x then 1 else 0)