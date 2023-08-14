-- list comprehension combines map and filter
-- [x*x | x <- l, is_even(x)]
-- A comprehension is just a syntax convinience made up of map,filters and concat
-- Is of the form [e | q1 q2 q3 q4] where q is either a Boolean or Generator
-- A generator is of the form p<-l where p is a pattern and l is a list
--


is_even :: Int -> Bool
is_even x = (mod x 2)==0


square_evens :: [Int] -> [Int]
square_evens l = [x*x | x<-l, is_even(x)]


divisors_n :: Int -> [Int]
divisors_n n = [x | x <- [1..n], (mod n x)==0 ]


primes_below_n :: Int -> [Int]
primes_below_n n = [x | x<-[1..n] ,(divisors_n x == [1,x])]


--Problem with below is that it'll produce duplicates
pythagorean_triplets :: Int-> [(Int,Int,Int)]
pythagorean_triplets n = [(x,y,z) | x<-[1..n],y<-[1..n],z<-[1..n], x*x + y*y == z*z]


-- We ensure x<y<z x strictly less than y
pythagorean_triplets_nonduplicacy :: Int-> [(Int,Int,Int)]
pythagorean_triplets_nonduplicacy n = [(x,y,z) | x<-[1..n],y<-[(x+1)..n],z<-[(y+1)..n], x*x + y*y == z*z]


myconcat :: [[Int]]->[Int]
myconcat l = [x| y<-l, x<-y ]    


main::IO()
main = do
    print(square_evens [1,2,3,4,5])
    print(divisors_n 923) 
    print("Primes below n  ",primes_below_n 100)

-- Like nested loops, later generators moves faster 
    print([(x,y) | x<-[1..100],y<-[1,100]])
    
    print("Pythagorean Triplet",pythagorean_triplets 100)
    print("Pythagorean Triplet No Duplicates",pythagorean_triplets_nonduplicacy 100)

    print(concat [[1,2],[],[3,4,5]])
    print(myconcat [[1,2],[],[3,4,5]])   
