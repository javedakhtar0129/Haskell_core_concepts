sumpairs :: (Int,Int) -> Int
sumpairs (x,y) = x+y


sumpairlist :: [(Int,Int)] -> Int
sumpairlist [] = 0
sumpairlist ((x,y):ys) = x + y + sumpairlist ys

listOfMarks :: [(String,Int)]
listOfMarks = [("Javed Akhtar",99),("Jake Peralta",90),("Amir Khusro",23)]


lookupName :: String -> [(String,Int)] -> Int
lookupName p [] = -1
lookupName p ((name,marks):ms) 
    | p==name = marks
    | otherwise = lookupName p ms


main :: IO ()
main = do
    print(sumpairs (4,3))
    print(sumpairlist [(1,2),(3,4)])
    print(lookupName "Javed Akhtar" listOfMarks)
