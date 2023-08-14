--Step 1 start with an infinite list [2,3,4,...]
--Step 2 begin with the first element and start knocking off it's multiples
--Step 3 move to next number and assume this is the new prime and repeat step 2

primes :: [Int]
primes = sieve [2..]
    where
        sieve (x:xs) = x:(sieve [y | y<-xs, mod y x>0])  -- Lazy evaluation


main :: IO()
main  = do
    print(primes)