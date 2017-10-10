module H99.Q11Spec where

import Test.Hspec
import Test.QuickCheck

import H99.Q11

spec :: Spec
spec = do
  describe "Q11" $ do
    it "encode' list" $ do
      let lst = [Multiple 4 'a',Single 'b',Multiple 2 'c', Multiple 2 'a',Single 'd',Multiple 4 'e']
      encode' "aaaabccaadeeee" `shouldBe` lst