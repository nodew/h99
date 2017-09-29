module H99.Q7Spec where

import Test.Hspec
import Test.QuickCheck

import H99.Q7

spec :: Spec
spec = do
  describe "Q7" $ do
    it "flatten list" $ do
      let xs = (List [Elem 1, List [Elem 2, List [Elem 3, Elem 4], Elem 5]])
        in flatten xs `shouldBe` [1, 2, 3, 4, 5]
