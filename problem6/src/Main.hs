import H99.Problem6

main = do
        putStrLn "Enter a String."
        inputString <- readLn :: IO String
        putStrLn (show (isPalindrome inputString))
