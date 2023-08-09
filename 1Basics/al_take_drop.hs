-- take n l returns first n values of l
-- drop n l drops first n values of l
-- if n is 0 or negative then empty [] list 
-- if n greater than length of l then full list

x :: [Int]
x = [0,1,2,3,4,5,6,7,8,9]

l :: [Int]
l = take 4 x ++ drop 4 x


main :: IO()
main = do
    print (take 0 x)
    print (take (-1) x)
    print (take 4 x)
    print (drop 4 (tail x))
    print (x)
    print ((take (length x) x) ++ (drop (length x) x))
    print ( l)



