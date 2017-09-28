module H99.Q2Spec (
  main,
  spec
) where

import Test.Hspec
import Test.QuickCheck

import H99.Q2 (myButLast, myButLast')

main :: IO ()
main = hspec spec

spec :: Spec
spec = do
  describe "Q2" $ do
    it "myButLast" $ do
      myButLast [1, 2, 3, 4] `shouldBe` 3
      myButLast ['a'..'z']   `shouldBe` 'y'

    it "myButLast'" $ do
      myButLast' [1, 2, 3, 4] `shouldBe` 3
      myButLast' ['a'..'z']   `shouldBe` 'y'
