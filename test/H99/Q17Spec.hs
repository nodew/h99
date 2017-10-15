module H99.Q17Spec where

import Test.Hspec
import Test.QuickCheck

import H99.Q17

spec :: Spec
spec = do
  describe "Q17" $ do
    it "split a list" $ property $
      \ s n -> split (s::String) (n::Int) == splitAt n s