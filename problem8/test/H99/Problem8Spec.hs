module H99.Problem8Spec
(main, spec) where

import H99.Problem8
import Test.Hspec

main :: IO()
main = hspec spec

spec = do
        describe "Test the Problem8 Module" $do
          it "Should remove duplicates from a list" $do
             (compress "aabbcc") `shouldBe` "abc"
