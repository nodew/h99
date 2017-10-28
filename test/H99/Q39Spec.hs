module H99.Q39Spec where

import Test.Hspec
import Test.QuickCheck

import H99.Q39

spec :: Spec
spec = do
  describe "Q39" $ do
    it "Calculate Euler's totient function phi(m) improved" $ do
      primesR 10 20 `shouldBe` [11, 13, 17, 19]