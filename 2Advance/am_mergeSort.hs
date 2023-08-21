-- Insertion sort has worst case O(n^2)
-- avg case O(n log n)

merge::[Int]->[Int]->[Int]
merge [] ys = ys
merge xs [] = xs
merge (x:xs) (y:ys)
    | x<=y = x:(merge xs (y:ys))
    | otherwise = y:(merge (x:xs) ys)


mergesort :: [Int] -> [Int]
mergesort [] = []
mergesort [x] = [x]
mergesort l = merge (mergesort (front l)) (mergesort (back l))
                where
                front l = take ((length l) `div` 2) l
                back l = drop ((length l) `div` 2) l

main ::IO()
main = do
    print(mergesort [1,5,3,7,3,7,4,9,5,0])
