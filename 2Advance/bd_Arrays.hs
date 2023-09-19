-- To access any number in list in constant time we use Data.Array
-- !! is to access list, ! is to access Array
-- Array is Lazy and takes n time

import Data.Array
-- indices of array come from Int and value stored comes from Char
-- Below works on whichever exhausts first principle or better way put lazy evaluation
myArray :: Array Int Char
myArray = listArray (0,1) ['a','b','c']

-- Ix is a class of all index types Int,Char,(Int,Int) & (Int,Int,Char) except Float and [Int]
-- listArray :: Ix i => (i,i) -> [e] -> Array i e
-- It can also be of type array :: Ix i => (i,i) -> [(i,e)] -> Array i e






main :: IO ()
main = do 
    print(myArray)
    print(listArray ('m','p') [0,2..])
    print(listArray ('b','a') [1..])  -- This will be empty because index should be ascending
    -- print(listArray (0,3) ['a','b'])  --  This will give us exception because index is not exhaust

    print(listArray (0,2) [(1,'a'),(2,'b'),(3,'c')])  -- This can create 2D tuples

    print(range (1,2))
    print(range ('m','p')) -- will return a string
    print(inRange (-50,10) 0)
    print(rangeSize (1,5))