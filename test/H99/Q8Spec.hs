module H99.Q8Spec where

import Test.Hspec
import Test.QuickCheck

import H99.Q8

spec :: Spec
spec = do
  describe "Q8" $ do
    it "compress list" $ do
      compress "aaaabccaadeeee" `shouldBe` "abcade"

    it "compress empty list" $ do
      compress "" `shouldBe` ""

    it "compress only one elem" $ do
      compress "a" `shouldBe` "a"

    it "compress two elem" $ do
      compress "ab" `shouldBe` "ab"