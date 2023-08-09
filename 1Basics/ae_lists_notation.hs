x :: [Integer]
x = [0..100]    -- upper limit is included

y :: [Int]    -- Arithematic progressions
y = [1,3..99]

z :: [Int]
z = [8,6..(-10)]

main :: IO()
main = do
    print x
    print y
    print z

    