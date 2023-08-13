-- filter takes a property p and selects a subset of the input [a]
-- filter :: (a->Bool) -> [a](input) -> [a](output)
-- map transforms the input where as filter selects a subset, type is same for input and output


even_only :: [Int] -> [Int]
even_only [] = []
even_only (x:xs)
    | is_even x = x:(even_only xs)
    | otherwise = even_only xs
        where
            is_even :: Int -> Bool
            is_even x = (mod x 2) == 0

--using filter to perform the above

is_even :: Int -> Bool
is_even x = (mod x 2) == 0

even_only_filter ::  [Int] -> [Int]
even_only_filter  x = filter is_even x


main :: IO()
main  = do
    print (even_only [1,2,3,4,5,6,7,8,9])