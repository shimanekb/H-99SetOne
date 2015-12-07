import H99.Problem9

main = do
        putStrLn "Enter a List of Characters"
        inputList <- readLn :: IO [Char]
        putStrLn (show (pack inputList))
