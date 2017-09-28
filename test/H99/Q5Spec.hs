module H99.Q5Spec where

import Test.Hspec
import Test.QuickCheck

import H99.Q5

spec :: Spec
spec = do
  describe "Q5" $ do
    it "myReverse" $ property $
      \xs ys -> myReverse ((xs :: [Int]) ++ (ys :: [Int])) == myReverse ys ++ myReverse xs