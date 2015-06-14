module H99.Problem7
(myFlatten, NestedList) where

data NestedList a = Elem a | List [NestedList a]

myFlatten :: NestedList -> [a] -> [a]
myFlatten (Elem x) concatXs = myFlatten y (x:concatXs)  
