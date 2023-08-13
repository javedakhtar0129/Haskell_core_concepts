-- map takes a function and a list then applies the f to every element in list
-- map f [1,2,3,4] = [(f 1),(f 2),(f 3),(f 4)]

-- Sum of length of nested list
sumLength :: [[a]] -> Int
sumLength [] = 0
sumLength (x:xs) = length x + (sumLength xs )

-- sum of length of nested list using map
sumLengthMap :: [[a]] -> Int
-- sumLengthMap [] = 0
sumLengthMap x = sum (map length x) 


-- map itself can be explained inductively
-- mymap f [] = []
-- mymap (x:xs) = (f []):(mymap f xs)
-- type of mymap can be explained by output type of 


main :: IO ()
main = do
    print(map (* 4) [1,2,3,4])
    print(sumLength [[1,2],[3],[]])
    print(sumLengthMap [[1,2],[3],[]])


