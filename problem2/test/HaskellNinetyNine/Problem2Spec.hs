module HaskellNinetyNine.Problem2Spec
(main, spec) where

import Test.Hspec
import HaskellNinetyNine.Problem2

main :: IO()
main = hspec spec

spec :: Spec
spec = do
        describe "HaskellNinetyNine module Tests" $do
          it "Return one element from last" $do
             (myButLast ([1,2,3,4] :: [Int])) `shouldBe` (Just 3)

          it "Return just the one element" $do
	     (myButLast ([3]::[Int])) `shouldBe` (Just 3)

          it "myButLast should return nothing" $do
             (myButLast ([]::[Int])) `shouldBe` Nothing
