import H99.Problem8

main = do
        putStrLn "Enter a string"
        inputString <- getLine
        putStrLn (compress inputString)
