-- Extracting all even length non-empty list from nested lists
-- best way to make sure list is empty is by using (x:xs) pattern

is_even :: Int -> Bool
is_even x = (mod x 2)==0


even_list :: [[Int]] -> [[Int]]
-- even_list l = [x| x<-l,mod (length x) 2 == 0]    -- This will allow empty lists as well
even_list l = [(x:xs)| (x:xs)<-l,mod (length (x:xs)) 2 == 0]    --This pattern matching will allow only non empty lists
 

main :: IO()
main = do
    print(even_list [[1,2],[],[3],[4,5,6,7]])
    