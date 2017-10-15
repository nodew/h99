module H99.Q16Spec where

import Test.Hspec
import Test.QuickCheck

import H99.Q16

spec :: Spec
spec = do
  describe "Q16" $ do
    it "drop every N'th element from a list" $ do
      dropEvery "abcdefghik" 3 `shouldBe` "abdeghk"