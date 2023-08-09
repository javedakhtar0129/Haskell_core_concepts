-- like head:tail we have init:last 

x :: [Int]
x = [1,2,3,4,5,6]


main :: IO ()
main = do
    print( head x)
    print( tail x)
    print( init x)
    print( last x)
