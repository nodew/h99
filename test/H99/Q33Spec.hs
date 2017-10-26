module H99.Q33Spec where

import Test.Hspec
import Test.QuickCheck

import H99.Q33

spec :: Spec
spec = do
  describe "Q33" $ do
    it "coprime" $ do
      coprime 35 64 `shouldBe` True