-- worst case O(n^2) and average O(n log n)

quicksort :: [Int] -> [Int]
quicksort [] = []
quicksort (x:xs) = (quicksort lower) ++ [splitter] ++ (quicksort upper)
                    where
                    splitter = x
                    lower = [y| y<-xs, y<=x]
                    upper = [y| y<-xs, y>x]


main :: IO ()
main = do
    print(quicksort [1,5,3,7,3,7,4,9,5,0])