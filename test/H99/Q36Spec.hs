module H99.Q36Spec where

import Test.Hspec
import Test.QuickCheck

import H99.Q36

spec :: Spec
spec = do
  describe "Q36" $ do
    it "Determine the prime factors of a given positive integer" $ do
      prime_factors_mult 315 `shouldBe` [(3,2),(5,1),(7,1)]