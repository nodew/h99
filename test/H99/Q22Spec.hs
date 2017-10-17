module H99.Q22Spec where

import Test.Hspec
import Test.QuickCheck

import H99.Q22

spec :: Spec
spec = do
  describe "Q22" $ do
    it "Create a list containing all integers within a given range" $ property $
      \a b -> range (a::Int) (b::Int) == take (b - a) [a..b]