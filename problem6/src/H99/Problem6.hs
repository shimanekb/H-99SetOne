module H99.Problem6
(isPalindrome) where

isPalindrome :: Eq a => [a] -> Bool
isPalindrome [] = False
isPalindrome xs = let reverseXs = reverse xs
                  in  (xs == reverseXs)
