-- Building paths
-- Lazy evaluation can be called as DFS

edge :: Char -> Char -> Bool
edge 'A' 'B' = True
edge 'A' 'D' = True
edge 'B' 'C' = True
edge 'C' 'A' = True
edge 'C' 'E' = True
edge 'D' 'E' = True
edge 'F' 'D' = True
edge 'F' 'E' = True
edge _ _ = False


type Path = [Char]
extendpath :: Path -> [Path]
extendpath [] = [[c]|c<-['A'..'F']]
extendpath p = [p++[c]| c<-['A'..'F'], edge (last p) c]
        

extend_all :: [Path] -> [Path]
extend_all [] = [[c]| c<-['A'..'F']]
extend_all l 
        = concat [extendpath p | p<-l]  -- = [ll | p <-l, ll <- extendpath p]


-- all_paths :: [[Path]]
-- all_paths = iterate extendall [[]]


connected_pairs :: [(Char, Char)]
connected_pairs = [(head p,last p) | l <- firstn, p<-l]
                where
                    n = length ['A'..'F']
                    firstn = drop 2 (take (n+1) all_paths)
                    all_paths = iterate extend_all [[]]


connected :: Char -> Char -> Bool
connected x y = elem (x,y) connected_pairs

main = do
    print(connected 'A' 'J')