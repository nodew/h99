module H99.Q37Spec where

import Test.Hspec
import Test.QuickCheck

import qualified H99.Q37 as S1
import qualified H99.Q34 as S2

spec :: Spec
spec = do
  describe "Q37" $ do
    it "Calculate Euler's totient function phi(m) improved" $ property $
      \n -> if (n::Int) > 1 then S1.totient n == S2.totient n else True