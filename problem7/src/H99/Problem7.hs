module H99.Problem7
(customFlatten, NestedList(Elem, List), getElem) where

data NestedList a = Elem a | List [NestedList a]
                    deriving (Show)

customFlatten :: Eq a => NestedList a -> [a]
customFlatten (List []) = []
customFlatten xs = myFlatten xs []

myFlatten :: Eq a => NestedList a -> [a] -> [a]
myFlatten (List []) ys = ys
myFlatten (List (x:xs))  ys | currentElem == Nothing = myFlatten (List xs) (ys ++ myFlatten x [])
                            | otherwise              = myFlatten (List xs) (ys ++ [eliminateJust currentElem])
		              where currentElem = getElem x
                              
getElem :: NestedList a -> Maybe a
getElem (List xs) = Nothing
getElem (Elem x) = Just x

eliminateJust :: (Maybe a) -> a
eliminateJust (Just x) = x
