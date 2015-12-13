module H99.Problem10
(encode) where

encode :: Eq a => [a] -> [(Int, a)]
encode [] = []
encode (x:xs) = let n = (length (takeWhile (==x) xs)) + 1
                in (n, x) : (encode (dropWhile (==x) xs))
