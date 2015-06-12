module HaskellNinetyNine.Problem2
(myButLast) where

myButLast :: [a] -> Maybe a
myButLast []     = Nothing 
myButLast [x]    = Just x
myButLast (_:xs) = Just (last (init xs))
