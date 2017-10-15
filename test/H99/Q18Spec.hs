module H99.Q18Spec where

import Test.Hspec
import Test.QuickCheck

import H99.Q18

spec :: Spec
spec = do
  describe "Q18" $ do
    it "slice a list" $ property $
      \s a b -> slice (s::String) (a::Int) (b::Int) === slice' s a b