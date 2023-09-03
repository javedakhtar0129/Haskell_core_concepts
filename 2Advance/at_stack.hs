

type Stack1 = [Int]

push1 :: Int -> Stack1 -> Stack1
push1 x s = x:s

pop1 :: Stack1 -> (Int,Stack1)
pop1 (x:s') = (x,s')

insert1 :: Int -> Int -> Stack1 -> Stack1
insert1 x n s = (take (n-1) s) ++ [x] ++ (drop (n-1) s)

-- Above uses internal structure of list, but we want to only use push and pop 
-- We just want to use push and pop for Stack so we create a user defined data structure
-- Second Stack1 is the constructor which converts Int to a Stack
-- This is what we call an abstract data type


data Stack = Stack[Int] deriving(Eq,Show,Ord)

empty :: Stack
empty = Stack []

push :: Int -> Stack -> Stack
push x (Stack xs) = Stack (x:xs)

pop :: Stack -> (Int,Stack)
pop (Stack (x:xs)) = (x, Stack xs)

isEmpty :: Stack -> Bool
isEmpty (Stack []) = True
isEmpty (Stack _) = False


a = Stack [1,2,3,4,5,6]
b = push 99 a
c = pop a

main :: IO ()
main=do
    print(a)
    print(b)
    print(c)
    