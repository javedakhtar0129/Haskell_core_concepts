import Data.Char
-- Strings are basically list of chrs 
-- Can be treated as a proper list

occurs :: Char -> String -> Bool
occurs w "" = False    -- Base case
occurs w (x:xs) 
    | w == x = True
    | w /= x = occurs w xs


capitalize :: Char -> Char
capitalize l  
    | (l >='a' && l<='z') = chr(ord l+ (ord 'A' - ord 'a'))
    | otherwise = l


toUppercase :: String -> String
toUppercase "" = ""
toUppercase (x:xs) = (capitalize x):(toUppercase xs)


position :: Char -> String -> Int
position l "" = 0
position l (x:xs) 
    | l==x = 0
    | otherwise = 1 + (position l xs)


whitespace :: Char -> Bool
whitespace ' ' = True
whitespace '\n' = True
whitespace '\t' = True
whitespace _ = False    -- wild card


wscount :: String -> Int    -- whitespace count
wscount "" = 0
wscount (x:xs)
    | whitespace x = 1 + wscount xs
    | otherwise = wscount xs


-- counting total number of words
wordcaux :: String -> Int
wordcaux [x] = 0
wordcaux (x:y:ys) 
    | (whitespace x) && not (whitespace y) = 1 + wordcaux (y:ys)
    | otherwise = wordcaux (y:ys)


wordcount :: String -> Int
wordcount l = wordcaux (' ':l)


main :: IO() 
main = do
    print(occurs 'x' "asfjbafsj")
    print(toUppercase "qwertz")
    print(position 'c' "wrugcadj")
    print(wscount "blank  shot range")
    print(wscount "abc    d")
    print(wordcount "mera naam Akhtar")