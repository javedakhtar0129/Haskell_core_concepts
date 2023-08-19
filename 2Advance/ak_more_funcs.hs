-- takeWhile is not immune to unsorted lists
-- zipWith is a map function

addMarks :: [[Int]] -> [Int]
addMarks [x] = x
-- addMarks (x:xs) = zipWith (+) x (addMarks xs)
addMarks x = foldr1 (zipWith (+)) x    -- can be written like this as well


nondecreasing :: [Int] -> Bool
nondecreasing xs = and [x<=y|(x,y)<-zip xs (tail xs)]


search_letter :: Char -> String -> Int
search_letter c s = head  [i| (y,i) <- zip s [1..],y==c]


main :: IO ()
main = do
    print(takeWhile (>7) [8,1,9,10])  -- will stop at 1
    print(dropWhile (<9) [8,1,9,10])

    print(zipWith (+) [1,2,3,4] [5,6,7,8] )
    print(zipWith (+) [1,2,3,4] [5,6])  -- stops where shorter list stops
    print(zipWith (<) [1,2] [2,1])

    print(addMarks [[1,2],[2,1]])
    
    print(nondecreasing [1..10]) 

    print(zip "akhtar" [0..])

    print(search_letter 'k' "akhtar")

