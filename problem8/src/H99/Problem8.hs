module H99.Problem8
(compress) where

compress :: Eq a => [a] -> [a]
compress (x:xs) = xs 
