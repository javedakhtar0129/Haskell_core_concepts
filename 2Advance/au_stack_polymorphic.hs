data Stack a = Stack[a] 
                deriving (Eq,Show,Ord)

empty :: Stack a
empty = Stack []

push:: a -> Stack a -> Stack a
push x (Stack xs) = Stack (x:xs)

pop :: Stack a -> (a,Stack a)
pop (Stack (x:xs)) = (x,Stack xs)

isEmpty :: Stack a -> Bool
isEmpty (Stack []) = True
isEmpty (Stack _) = False

a = Stack [1,2,3,4]


main :: IO ()
main = do
    print(a)
    print(push 99 a)
    print(pop a)



