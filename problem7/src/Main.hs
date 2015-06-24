import H99.Problem7

main = do
        putStrLn "Enter a Nested List."
	customList <- getLine
        putStrLn (customFlatten (read customList::NestedList Char))
