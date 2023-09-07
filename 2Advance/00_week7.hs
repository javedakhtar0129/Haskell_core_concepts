import Data.Char (toLower)

isPalindrome :: String -> Bool
isPalindrome word = cleanedWord == reverse cleanedWord
  where
    cleanedWord = map toLower word

main :: IO ()
main = do
    input <- getContents
    let wordsList = lines input
    let results = map (\word -> if isPalindrome word then "Y" else "N") wordsList
    putStr $ unlines results