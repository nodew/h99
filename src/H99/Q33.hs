module H99.Q33 where

{-
  Determine whether two positive integer numbers are coprime.
  Two numbers are coprime if their greatest common divisor equals 1.

  coprime 35 64 => True

-}

import H99.Q32 (myGCD)

coprime :: Int -> Int -> Bool
coprime x y = myGCD x y == 1