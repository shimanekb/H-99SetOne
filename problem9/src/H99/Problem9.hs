module H99.Problem9
(pack) where

pack :: Eq a => [a] -> [[a]]
pack [] = []
pack (x:xs) = (x:takeWhile (==x) xs) : pack (dropWhile (==x) xs)

{-| 
pack :: Eq a => [a] -> [[a]]
pack xs  =  (myGroup xs [])

myGroup :: Eq a => [a] -> [[a]] -> [[a]]
myGroup (y:ys) []             = myGroup ys ([y]:[])
myGroup (y:ys) xs
    | (checkLast y lastList)  = myGroup ys ((init xs) ++ [(lastList ++ [y])])
    | otherwise               = myGroup ys (xs ++ [[y]])
    where lastList = last xs
myGroup [] xs                 = xs

checkLast :: Eq a => a -> [a] -> Bool
checkLast x ys = let lastElem = last ys
                 in (x == lastElem)
checkLast x [] = False
-}
