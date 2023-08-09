myreverse :: [Int] -> [Int]
myreverse [] = []
myreverse (x:xs) = (myreverse xs) ++ [x]


main :: IO()
main = do
    print(myreverse [1,2,3,4,5])
    