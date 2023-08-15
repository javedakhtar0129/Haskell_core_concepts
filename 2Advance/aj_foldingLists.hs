import Language.Haskell.TH (prim)
-- foldr means folding from the right
-- It looks like foldr f v [] = v Base case 
-- And foldr f v (x:xs) = f x (foldr f v xs)
-- type of foldr is :: (a->b->b)->b->[a]->b

sumlist :: [Int] -> Int
sumlist l= foldr (+) 0 l


multlist :: [Int] -> Int
multlist l= foldr (*) 1 l


myLength :: [Int] -> Int
myLength l = foldr f 0 l
    where 
        f x y = 1+y

-- Guy on discord gave me this
-- Prelude> appendr x y = y ++ [x]
-- Prelude> :t appendr
-- appendr :: a -> [a] -> [a]
-- Prelude> :t foldr appendr []
-- foldr appendr [] :: Foldable t => t a -> [a]
-- Prelude> :t foldr appendr [] [1..10]
-- foldr appendr [] [1..10] :: (Num a, Enum a) => [a]
-- Prelude> foldr appendr [] [1..10]
-- [10,9,8,7,6,5,4,3,2,1]
-- Prelude> foldr appendr [] [1..10]
--

appendright :: Int -> [Int] -> [Int]
appendright x l = l ++ [x]
-- appendright x l = foldr (:) x l

-- foldr appendright [] l = is reverse of l 
-- foldr (++) [] This is same as concat

-- Sometimes we cannot assign a natural value to the [] in foldr e.g Max value in list
-- with singleton list just returns the element foldr1 f [x] = x 
-- And foldr1 f (x:xs) = f x (foldr1 f xs)

maxlist :: [Int] -> Int
maxlist l = foldr1 max l


main :: IO ()
main = do
    print(sumlist [1,2,3,4,5,6])
    print(multlist [1,2,3,4,5])
    print(myLength [0,1,2,3,4,5])

    print(foldr appendright [] [1,2,3,4,5] )  -- Reverses the list
    print(maxlist [1,2,3,4,5,99])
    

