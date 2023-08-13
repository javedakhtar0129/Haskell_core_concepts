-- filtering out all the vowels first and then uppercasing them
import Data.Char

capitalize :: Char -> Char
capitalize l  
    | (l >='a' && l<='z') = chr(ord l+ (ord 'A' - ord 'a'))
    | otherwise = l


toUppercase :: String -> String
toUppercase "" = ""
toUppercase (x:xs) = (capitalize x):(toUppercase xs)


cap_vow :: [Char] -> [Char]
cap_vow x = map toUpper (filter is_vowel x)


is_vowel :: Char -> Bool
is_vowel c = (c=='a') || (c=='e') || (c=='i')|| (c=='o')|| (c=='u')


main :: IO ()
main = do
    print(cap_vow "asdd")
    print(cap_vow "Something sort of knew what AA")