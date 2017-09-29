module H99.Q9Spec where

  import Test.Hspec
  import Test.QuickCheck

  import H99.Q9

  spec :: Spec
  spec = do
    describe "Q9" $ do
      it "pack list" $ do
        let lst = ['a', 'a', 'a', 'a', 'b', 'c', 'c', 'a', 'a', 'd', 'e', 'e', 'e', 'e']
          in pack lst `shouldBe` ["aaaa","b","cc","aa","d","eeee"]

      it "pack one elem list" $ do
        pack ['a'] `shouldBe` ["a"]