module H99.Q32Spec where

import Test.Hspec
import Test.QuickCheck

import H99.Q32

spec :: Spec
spec = do
  describe "Q32" $ do
    it "gcd" $ do
      [myGCD 36 63, myGCD (-3) (-6), myGCD (-3) 6] `shouldBe` [9,3,3]