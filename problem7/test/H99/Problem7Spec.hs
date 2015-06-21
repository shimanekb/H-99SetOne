module H99.Problem7Spec
(main, spec) where

import Test.Hspec
import H99.Problem7

main :: IO()
main = hspec spec
spec = do
        describe "Test suite for module H99.Problem7" $do
          it "Should flatten list" $do
           (customFlatten (List [Elem 1, Elem 2, Elem 3])) `shouldBe` [1,2,3] 
