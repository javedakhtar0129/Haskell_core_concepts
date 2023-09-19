-- complexity is n time

import Data.Array 

fibonacci_array :: Array Int Integer
fibonacci_array = listArray (0,maxBound) [f i | i <- [0..]]
                where 
                    f 0 = 1 
                    f 1 = 1
                    f i = fibonacci_array!(i-1) + fibonacci_array!(i-2)


main = do
    print(take 3 fibonacci_array)