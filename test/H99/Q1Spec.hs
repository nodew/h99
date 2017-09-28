{-# LANGUAGE ScopedTypeVariables #-}

module H99.Q1Spec where

import Test.Hspec
import Test.QuickCheck

import H99.Q1

spec :: Spec
spec = do
  describe "Q1" $ do
    it "myLast fail on empty" $ do
      myLast [] `shouldThrow` anyException

    it "myLast works" $ property $ do
      \(NonEmpty (xs :: [Int])) ->
        myLast xs == last xs

    it "myLast' fail on empty" $ do
      myLast' [] `shouldThrow` anyException

    it "myLast' works" $ property $ do
      \(NonEmpty (xs :: [Int])) ->
        myLast' xs == last xs