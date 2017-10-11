module H99.Q15Spec where

import Test.Hspec
import Test.QuickCheck

import H99.Q15

spec :: Spec
spec = do
  describe "Q15" $ do
    it "replicate a list" $ property $
      \s n -> repli (s::String) (n::Int) == repli' s n