module H99.Q3Spec where

import Test.Hspec
import Test.QuickCheck

import H99.Q3

spec :: Spec
spec = do
  describe "Q3" $ do
    it "elementAt" $ do
      elementAt [1, 2, 3, 4] 1 `shouldBe` 1
      elementAt ['a'..'z']   3 `shouldBe` 'c'