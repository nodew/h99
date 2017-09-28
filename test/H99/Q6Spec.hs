module H99.Q6Spec where

import Test.Hspec
import Test.QuickCheck

import H99.Q6

spec :: Spec
spec = do
  describe "Q6" $ do
    it "isPalindrome even" $ property $
      \xs -> isPalindrome ((xs :: String) ++ reverse xs) == True

    it "isPalindrome odd" $ property $
      \xs y -> isPalindrome ((xs :: String) ++ [y:: Char] ++ reverse xs) == True

    it "isPalindrome' even" $ property $
      \xs -> isPalindrome' ((xs :: String) ++ reverse xs) == True

    it "isPalindrome' odd" $ property $
      \xs y -> isPalindrome' ((xs :: String) ++ [y:: Char] ++ reverse xs) == True