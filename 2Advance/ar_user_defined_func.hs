-- data keyword is used to define new types
-- To check equality of two value of data type a, a must belong to typeclass Eq
-- Show consists of all the function in typeclass show, and converts it into string
-- Ord converts it into an order of sequence
-- Square,Circle,Sun are called constructors
--



-- data Bool = True | False
data Day =  Sun | Mon | Tue | Wed | Thu | Fri | Sat 
            deriving (Eq,Show,Ord)

data Shape = Circle Float 
            | Square Float
            | Rectangle Float Float
            deriving (Eq,Ord,Show)


-- Defining functions using pattern matching
weekend :: Day -> Bool
weekend Sun = True
weekend Sat = True
weekend _ = False

area :: Shape -> Float
area (Square x) = x*x
area (Circle r) = pi*r*r
area (Rectangle l w) = l*w
    where
        pi = 3.1415927


weekend2 :: Day -> Bool
weekend2 d
    | (d==Sat || d==Sun) = True
    | otherwise = False


nextday :: Day -> Day
nextday Sun = Mon
nextday Mon = Tue
nextday Tue = Wed
nextday Wed = Thu
nextday Thu = Fri
nextday Fri = Sat
nextday Sat = Sun



main=do
    print(nextday Sun)
    print(Wed>Tue)
    print(area(Square 3)==area(Rectangle 3 3))