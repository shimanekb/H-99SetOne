import H99.Problem10

main = do
        putStrLn "Enter a List of Characters"
        inputList <- readLn :: IO [Char]
        putStrLn (show (encode inputList))
