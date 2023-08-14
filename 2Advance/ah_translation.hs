even_squares :: [Int]
even_squares = [n*n | n<-[1..7],mod n 2==0]


even_squares_generator :: [[Int]] -- This gives a spirulating list
even_squares_generator = map f [1..7]
                            where
                            f n = if (mod n 2)==0 then [n*n] else []


main ::IO()
main = do
    print(even_squares)
    print(even_squares_generator) 
    print(concat even_squares_generator) --use concat in the function