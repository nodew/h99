module H99.Q35Spec where

import Test.Hspec
import Test.QuickCheck

import H99.Q35

spec :: Spec
spec = do
  describe "Q35" $ do
    it "Calculate Euler's totient function phi(m)" $ do
      primeFactors 315 `shouldBe` [3, 3, 5, 7]