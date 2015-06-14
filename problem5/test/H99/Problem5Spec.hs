module H99.Problem5Spec
(main, spec) where

import Test.Hspec
import H99.Problem5

main :: IO()
main = hspec spec
spec = do
        describe "Tests for the H99.Problem5 module" $do
          it "Should reverse list" $do
           (myReverse "Hello") `shouldBe` "olleH"
          it "Should return empty List when list is empty" $do
           (myReverse "") `shouldBe` ""
