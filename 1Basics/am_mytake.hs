mytake :: Int -> [Int] -> [Int]
mytake n [] = []
mytake n (x:xs)
    | n == 0 = []
    | n > 0 = x:(mytake (n-1) xs)
    | otherwise = []    -- is same as n<=0
     
