-- XOR --
xor :: Bool -> Bool -> Bool
xor True False = True
xor False True = True
xor b1 b2 = False

-- OR --
myor :: Bool -> Bool -> Bool
myor True b1 = True
myor b1 True = True
myor b1 b2 = False

--AND--
myand :: Bool -> Bool -> Bool
myand True True = True
myand b1 b2 = False


main :: IO ()

main = do 
    print(myor True False) 
    print(xor False False)
    print(myand True True)