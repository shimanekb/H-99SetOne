module H99.Problem6Spec
(main, spec) where

import Test.Hspec
import H99.Problem6

main :: IO()
main = hspec spec
spec = do
        describe "Tests for module H99.Problem6" $do
          it "Should return true" $do
           (isPalindrome "racecar") `shouldBe` True
          it "Should return false" $do
           (isPalindrome "not a palindrome") `shouldBe` False
          it "Should return false when empty" $do
           (isPalindrome "") `shouldBe` False
