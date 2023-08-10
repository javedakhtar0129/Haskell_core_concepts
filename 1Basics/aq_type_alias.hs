--In haskell we can even declare name of types we assign 
-- By convention it begins from capital letter

type Marklist = [(String,Int)]

lookupName :: String -> Marklist -> Int
lookupName p [] = -1
lookupName p ((name,marks):ms) 
    | p==name = marks
    | otherwise = lookupName p ms

-- String is a type alias for [Char]


type Point2D = (Float,Float)

euclideanDistance :: Point2D -> Point2D -> Float
-- euclideanDistance (x1,y1) (x2,y2) = sqrt((x2-x1)**2 + (y2-y1)**2)
euclideanDistance (x1,y1) (x2,y2) = sqrt(sqr (x2-x1) + sqr (y2-y1)) -- much cleaner than above
                                        where 
                                            sqr :: Float -> Float
                                            sqr x = x*x

-- where is used for local definitions, only that function can use it

main :: IO ()
main = do
    print(euclideanDistance (0,0) (1,1))