attach :: [Int]->[Int]->[Int]
attach [] l = l
attach (x:xs) l = x:(attach xs l)

main :: IO ()
main = do
    print(attach [1,2,3,4] [5,6,7])
    print([1,2,3,4] ++ [5,6,7])    -- inbuilt function

 