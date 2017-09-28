module H99.Q4Spec (
  main,
  spec
) where

import Test.Hspec
import Test.QuickCheck

import H99.Q4

main :: IO ()
main = hspec spec

spec :: Spec
spec = do
  describe "Q4" $ do
    it "myLength" $ do
      myLength [1, 2, 3, 4] `shouldBe` 4
      myLength "Hello, world!" `shouldBe` 13

    it "myLength'" $ do
      myLength' [1, 2, 3, 4] `shouldBe` 4
      myLength' "Hello, world!" `shouldBe` 13