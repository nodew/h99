module H99.Q14Spec where

import Test.Hspec
import Test.QuickCheck

import H99.Q14

spec :: Spec
spec = do
  describe "Q14" $ do
    it "duplicate a list" $ do
      dupli [1, 2, 3] `shouldBe` [1, 1, 2, 2, 3, 3]