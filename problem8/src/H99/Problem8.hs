module H99.Problem8
(compress) where

compress :: Eq a => [a] -> [a]
compress xs = internalCompress xs [] 

internalCompress :: Eq a => [a] -> [a] -> [a]
internalCompress (x:old) new |  (length old) <= 0  = reverse new
                             |  not (x `elem` new) = internalCompress old (x:new)
                             |  otherwise          = internalCompress old new
                      
