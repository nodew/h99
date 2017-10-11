module H99.Q12Spec where

import Test.Hspec
import Test.QuickCheck

import H99.Q12 (decodeModified)
import H99.Q11

spec :: Spec
spec = do
  describe "Q12" $ do
    it "decode an encoded list" $ property $
      \s -> decodeModified (encode' (s::String)) == s