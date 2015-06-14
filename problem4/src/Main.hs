import H99.Problem4

main = do
        putStrLn "Enter a String."
        inputList <- readLn :: IO [Char]
        putStrLn (show (myLength inputList))
