myascending :: [Int] -> Bool
myascending [] = True
myascending [x] = True
myascending (x:y:ys) = (x <= y) && myascending (y:ys) 

main :: IO()
main = do
    print (myascending [1,2,3,4,5])
    print (myascending [1,2,3,4,5,1])