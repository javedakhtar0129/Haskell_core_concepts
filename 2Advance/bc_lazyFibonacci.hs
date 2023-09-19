-- Fibonacci is a recursive method which takes 2^n time to compute
-- but using lazy evaluation we can compute with n time

-- this is an infinite list
fibonacci :: [Integer]
fibonacci = 1:1:zipWith (+) fibonacci (tail fibonacci)


fastfib :: Int -> [Integer]
fastfib n = take n fibonacci 


main :: IO ()
main = do
    print(fastfib 10)
    print(zipWith (+) [1,1,0] [1,0,9])
