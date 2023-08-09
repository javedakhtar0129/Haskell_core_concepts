import Data.Char
capitalize :: Char -> Char
capitalize l  
    | (l >='a' && l<='z') = chr(ord l+ (ord 'A' - ord 'a'))
    | otherwise = l


main :: IO()
main = do
    print(chr 99)
    print(ord 'c')
    print(chr (ord 'c'))
    print(ord (chr 99))
    print(capitalize 'm')
    print(capitalize '$')

  

