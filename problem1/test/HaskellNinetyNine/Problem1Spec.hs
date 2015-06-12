module HaskellNinetyNine.Problem1Spec
(main, spec) where

import Test.Hspec
import HaskellNinetyNine.Problem1

main :: IO()
main = hspec spec

spec :: Spec
spec = do
   describe "Returns last of list" $ do
      it "Returns last from list" $do
         (myLast [1,2,3,4]) `shouldBe` 4
