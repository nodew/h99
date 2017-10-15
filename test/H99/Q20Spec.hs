module H99.Q20Spec where

import Test.Hspec
import Test.QuickCheck

import H99.Q20

spec :: Spec
spec = do
  describe "Q20" $ do
    it "remove k'th from a list" $ do
      removeAt 2 "abcd" `shouldBe` ('b',"acd")
