module H99.Q41Spec where

import Test.Hspec
import Test.QuickCheck

import H99.Q41

spec :: Spec
spec = do
  describe "Q41" $ do
    it "print a list of all even numbers and their Goldbach composition" $ do
      goldbachList 9 20 `shouldBe` [(3,7),(5,7),(3,11),(3,13),(5,13),(3,17)]
      goldbachList' 4 2000 50 `shouldBe` [(73,919),(61,1321),(67,1789),(61,1867)]
