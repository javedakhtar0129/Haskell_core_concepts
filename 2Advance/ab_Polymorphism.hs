--POLYMORPHISM
-- functions that can work on data structures(eg lists here) of more than one data type
-- eg length,reverse func doesn't care about the type of list


-- + - * / are infix notations and div and mod are prefix.
-- We can use (+) 3 4 to turn it into a prefix notations.
-- And we can use 3 `div` 4,3 `mod` 4  to turn them into infix notations.


--HIGHER ORDER FUNCTIONS
-- This is basically passing a function as the argument for another function
-- [apply f x = f x] , What will be the type of apply
-- We know for f x the type is a -> b(output) so apply will be apply (a->b) -> b(output type)
-- Sorting algos are the best example for a higher order function
-- map and filters are the most important higher order functions


main :: IO ()
main = do
    print(5 + 3, (+) 5 3)
    print(div 5  2,5 `div` 2)