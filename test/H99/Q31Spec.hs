module H99.Q31Spec where

import Test.Hspec
import Test.QuickCheck

import H99.Q31

spec :: Spec
spec = do
  describe "Q31" $ do
    it "2 should be prime" $ do
      isPrime 2 `shouldBe` True
    it "47 should be prime" $ do
      isPrime 47 `shouldBe` True
    it "120 isn't prime" $ do
      isPrime 120 `shouldBe` False