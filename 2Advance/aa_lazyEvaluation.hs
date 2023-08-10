-- Lazy evaluation is also known as "call by need"

power :: Int -> Int -> Int
power _ 0 = 1    -- remember this
power x n = x * power x (n-1)


infiniteList :: [Int]
infiniteList = infiniteListAux 0
                where
                    infiniteListAux :: Int -> [Int]
                    infiniteListAux n = n : infiniteListAux (n+1)


main :: IO()
main = do
    print (power 5 2)
    -- Now assuming anything power _ 0 is 1 
    print (power (2+2) 0)
    -- print(div 3 0)    -- this is invalid
    print (power (div 3 0) 0)    -- This worked because haskell use lazy evaluation

    print (head (2:reverse [1..5]))    -- Reverse is not evaluated here
    print (tail (2:reverse [1..5]))    -- Reverse is evaluated here

    -- print(infiniteList)    -- This will run infinitely
    print(head infiniteList)    -- But this will follow lazy evaluation

