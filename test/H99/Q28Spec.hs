module H99.Q28Spec where

import Test.Hspec
import Test.QuickCheck

import H99.Q28

spec :: Spec
spec = do
  describe "Q28" $ do
    it "Sorting a list of lists according to length of sublists" $ do
      lsort ["abc","de","fgh","de","ijkl","mn","o"] `shouldBe` ["o","de","de","mn","abc","fgh","ijkl"]
      lfsort ["abc", "de", "fgh", "de", "ijkl", "mn", "o"] `shouldBe` ["o","ijkl","abc","fgh","de","de","mn"]
