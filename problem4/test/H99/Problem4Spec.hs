module H99.Problem4Spec
(main, spec) where

import Test.Hspec
import H99.Problem4

main :: IO ()
main = hspec spec

spec = do
        describe "Tests for H99.Problem4 module" $do
          it "Should return length of list" $do
             (myLength "12345") `shouldBe` 5
          it "Should return 0 for an empty list" $do
             (myLength []) `shouldBe` 0
