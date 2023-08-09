{-# OPTIONS_GHC -Wno-unrecognised-pragmas #-}
{-# HLINT ignore "Use foldr" #-}

--length
myLength :: [Int] -> Int
myLength [] = 0
myLength l = 1 + myLength(tail l)

--length new method
newMethodLength :: [Int] -> Int
newMethodLength [] = 0
newMethodLength (x:xs) = 1 + newMethodLength xs    --This is how list decomposes

--sum of integers in a list
mySum :: [Int] -> Int
mySum [] = 0
mySum (x:xs) = x + mySum xs


main = do
    print(myLength [0,1,2,3,4,5,6,7,8,9])   
    print(newMethodLength[0,1,2,3,4,5,6,7,8])   
    print(mySum [1,4,5])


    