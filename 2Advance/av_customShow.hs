data Stack a = Stack[a] 
                deriving (Eq,Ord)

printElems :: (Show a) => [a] -> String
printElems [] = ""
printElems [x] = show x
printElems (x:xs) = show x ++ "->" ++ printElems xs 

instance (Show a) => Show (Stack a) 
    where show (Stack l) = "Stack [" ++ printElems l ++ "]"


main :: IO ()
main = do
    print(show (Stack [1,2,3,4]))