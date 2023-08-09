appendr :: Int -> [Int] -> [Int]
appendr x [] = [x]
appendr x (y:ys) = y:(appendr x ys)


main :: IO ()
main = do
    print(appendr 5 [1,2,3,4])
