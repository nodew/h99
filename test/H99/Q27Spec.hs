module H99.Q27Spec where

import Test.Hspec
import Test.QuickCheck

import H99.Q27

spec :: Spec
spec = do
  describe "Q27" $ do
    it "Group the elements of a set into disjoint subsets" $ do
      length (group [2,3,4] ["aldo","beat","carla","david","evi","flip","gary","hugo","ida"]) `shouldBe` 1260
      length (group [2,2,5] ["aldo","beat","carla","david","evi","flip","gary","hugo","ida"]) `shouldBe` 756