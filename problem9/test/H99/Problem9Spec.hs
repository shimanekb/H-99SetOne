module H99.Problem9Spec
(main, spec) where

import H99.Problem9
import Test.Hspec

main :: IO()
main = hspec spec

spec = do
        describe "Test the Problem9 Module" $do
         it "Should pack a list with repeating items" $do
			(pack [2,2,3,3,3,4,4]) `shouldBe` [[2,2],[3,3,3],[4,4]]
