module H99.Q19Spec where

import Test.Hspec
import Test.QuickCheck

import H99.Q19

spec :: Spec
spec = do
  describe "Q19" $ do
    it "rotate a list" $ do
      rotate ['a','b','c','d','e','f','g','h'] 3 `shouldBe` "defghabc"
      rotate ['a','b','c','d','e','f','g','h'] (-2) `shouldBe` "ghabcdef"
