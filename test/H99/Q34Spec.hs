module H99.Q34Spec where

import Test.Hspec
import Test.QuickCheck

import H99.Q34

spec :: Spec
spec = do
  describe "Q34" $ do
    it "Calculate Euler's totient function phi(m)" $ do
      totient 10 `shouldBe` 4