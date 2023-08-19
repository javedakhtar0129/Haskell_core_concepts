-- initial segments start with empty list
-- partitions of a list are non emply sublists, list of lists

initsegs :: [a] -> [[a]]
initsegs [] = [[]]
initsegs (x:xs) = []:map (x:) (initsegs xs)

interleave :: a -> [a] -> [[a]]
interleave x [] = [[x]]
interleave x (y:ys) = (x:y:ys): map (y:) (interleave x ys)

list_permulations :: [a] -> [[a]]
list_permulations [x] = [[x]]
list_permulations (x:xs) = concat (map (interleave x) (list_permulations xs))

list_partition :: [a] ->[[[a]]]
list_partition [x] = [[[x]]]
list_partition (x:xs) = [(x:head l):(tail l)| l <- list_partition xs]
                        ++ [[x]:l | l<-list_partition xs]

main :: IO()
main = do
    print(initsegs [1,2,3,4,5])

    print(interleave 1 [3,4,5])

    print(list_permulations [4,3,1])

    print(list_partition [6,7,8,9])