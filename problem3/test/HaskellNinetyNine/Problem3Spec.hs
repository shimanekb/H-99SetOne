module HaskellNinetyNine.Problem3Spec
(main, spec) where

import Test.Hspec
import HaskellNinetyNine.Problem3
import Control.Exception (evaluate)

main :: IO()
main = hspec spec

spec :: Spec
spec = do
        describe "Tests for Problem3 module" $do
          it "Should return element at specified index" $do
             (elementAt ([1,2,3,4]::[Int]) 2) `shouldBe` 2
          
          it "Should return error if list is none existent" $do
            evaluate (elementAt ([]::[Int]) 2) `shouldThrow` (errorCall "Empty List")
