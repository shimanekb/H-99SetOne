import H99.Problem5

main = do
        putStrLn "Enter a list of Doubles."
        doubleList <- readLn :: IO [Double]
        putStrLn (show (myReverse doubleList))
