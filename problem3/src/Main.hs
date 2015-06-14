import HaskellNinetyNine.Problem3

retrieveIndex :: IO Int
retrieveIndex = readLn

main = do
        putStrLn "Create a bracket enclosed list"
        inputList <- readLn :: IO [Int]
        putStrLn "Give an index"
        index <- retrieveIndex
        putStrLn (show (elementAt inputList index))
