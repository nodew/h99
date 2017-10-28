module H99.Q40Spec where

import Test.Hspec
import Test.QuickCheck

import H99.Q40

spec :: Spec
spec = do
  describe "Q40" $ do
    it "Goldbach's conjecture" $ do
      goldbach 12 `shouldBe` (5, 7)
      goldbach 28 `shouldBe` (5, 23)