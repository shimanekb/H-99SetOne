module HaskellNinetyNine.Problem3
(elementAt) where

elementAt :: [a] -> Int -> a
elementAt [] n = error "Empty List"
elementAt xs n = xs !! (n - 1)
