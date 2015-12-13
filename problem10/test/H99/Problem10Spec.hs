module H99.Problem10Spec
(main, spec) where

import Test.Hspec
import H99.Problem10

main :: IO()
main = hspec spec

spec = do 
        describe "Problem 10 Module" $do
         it "Should encode repeating items" $do
          (encode "aaaabccaadeeee") `shouldBe` [(4,'a'),(1,'b'),(2,'c'),(2,'a'),(1,'d'),(4,'e')]
