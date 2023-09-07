dropOdds :: Int -> Int
dropOdds 0 = 0
dropOdds n
  | n `mod` 10 `mod` 2 == 1 = dropOdds (n `div` 10)
  | otherwise = (n `mod` 10) + 10 * dropOdds (n `div` 10)

moreZeros :: Int -> Bool
moreZeros 0 = True
moreZeros n = countZeros n > countOnes n
  where
    countZeros 0 = 0
    countZeros x = if x `mod` 2 == 0 then 1 + countZeros (x `div` 2) else countZeros (x `div` 2)

    countOnes 0 = 0
    countOnes x = if x `mod` 2 == 1 then 1 + countOnes (x `div` 2) else countOnes (x `div` 2)



binToTer :: Int -> Int
binToTer 0 = 0
binToTer n = convert n 0 0

convert :: Int -> Int -> Int -> Int
convert 0 _ result = result
convert n placeValue result =
    let (quotient, remainder) = n `divMod` 10
        ternaryDigit = remainder * (2 ^ placeValue)
    in convert quotient (placeValue + 1) (ternaryDigit + result)
    



palindrome :: Int -> Bool
palindrome n = show n == reverse (show n)
