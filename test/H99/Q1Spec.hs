module H99.Q1Spec (
  main,
  spec
) where

import Test.Hspec
import Test.QuickCheck

import H99.Q1 (myLast, myLast')

main :: IO ()
main = hspec spec

spec :: Spec
spec = do
  describe "Q1" $ do
    it "mylast" $ do
      myLast [1, 2, 3, 4] `shouldBe` 4
      myLast ['x','y','z'] `shouldBe` 'z'

    it "myLast'" $ do
      myLast' [1, 2, 3, 4] `shouldBe` 4
      myLast' ['x','y','z'] `shouldBe` 'z'