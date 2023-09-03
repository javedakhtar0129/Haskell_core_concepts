
max1 :: [Int] -> Maybe Int
max1 [] = Nothing
max1 [x] = Just x
max1 (x:xs)
    | x > y = Just x
    | otherwise = Just y
    where Just y = max1 xs


printmax :: [Int] -> String
printmax l = case (max1 l) of
            Nothing -> show "Empty List"
            Just x -> show "Maximum =" ++ show x


main :: IO ()
main = do
    print(max1 [99,2,3,9])
    print(printmax [99,1001,2])