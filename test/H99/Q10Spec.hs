module H99.Q10Spec where

import Test.Hspec
import Test.QuickCheck

import H99.Q10

spec :: Spec
spec = do
  describe "Q10" $ do
    it "encode list" $ do
      encode "aaaabccaadeeee" `shouldBe` [(4,'a'),(1,'b'),(2,'c'),(2,'a'),(1,'d'),(4,'e')]