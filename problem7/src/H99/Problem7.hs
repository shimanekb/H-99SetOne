module H99.Problem7
(myFlatten, NestedList) where

data NestedList a = Elem a | List [NestedList a]
                    deriving (Show)

myFlatten :: NestedList  a -> [a] -> NestedList a
myFlatten (List xs)  ys = let nestHead = head xs
                          in  nestHead
