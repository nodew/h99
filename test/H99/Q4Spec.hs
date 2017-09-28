module H99.Q4Spec where

import Test.Hspec
import Test.QuickCheck

import H99.Q4

spec :: Spec
spec = do
  describe "Q4" $ do
    it "myLength" $ property $
      \xs -> myLength (xs :: [Int]) == length xs

    it "myLength'" $ property $
     \xs -> myLength' (xs:: String) == length xs