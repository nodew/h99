module H99.Q21Spec where

import Test.Hspec
import Test.QuickCheck

import H99.Q21

spec :: Spec
spec = do
  describe "Q21" $ do
    it "Insert an element at a given position into a list" $ property $
      \x xs n -> if and [n < length xs, n > 0] then
                   insertAt (x::Char) (xs::String) (n::Int) == insertAt' x xs n
                 else True