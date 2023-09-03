-- 1. Replace non-power of 3 elements with 0 and power of 3 elements with 3*n
f1 :: [Int] -> [Int]
f1 [] = []
f1 (x:xs)
  | isPowerOf3 x = 3 * x : f1 xs
  | otherwise    = 0 : f1 xs
  where
    isPowerOf3 n = n > 0 && (3 ^ round (logBase 3 (fromIntegral n))) == n
    
-- 2. Find the indices where elements are greater than their next element
f2 :: [Int] -> [Int]
f2 xs = findIndices 0 xs
  where
    findIndices _ [] = []
    findIndices i (x:y:ys)
      | x > y     = i : findIndices (i + 1) (y:ys)
      | otherwise = findIndices (i + 1) (y:ys)
    findIndices _ [_] = []

-- 3. Remove adjacent duplicates
f3 :: [Int] -> [Int]
f3 [] = []
f3 [x] = [x]
f3 (x:y:ys)
  | x == y    = f3 (y:ys)
  | otherwise = x : f3 (y:ys)

-- 4. Partition into upruns
f4 :: [Int] -> [[Int]]
f4 [] = []
f4 xs = uprun : f4 rest
  where
    split [] = ([], [])
    split [x] = ([x], [])
    split (x:y:ys)
      | x <= y    = let (u, v) = split (y:ys) in (x:u, v)
      | otherwise = ([x], y:ys)
    (uprun, rest) = split xs



subSeq :: String -> String -> Bool
subSeq str1 str2 =
  let
    n = length str1
    m = length str2
  in
    foldl (\acc i -> acc && str1 !! i == str2 !! (i + (m - n))) True [0..m-1]

subWord :: String -> String -> Bool
subWord str1 str2 =
  let
    n = length str1
    m = length str2
  in
    foldl (\acc i -> acc || str1 !! (i + (m - n)) == str2 !! i) False [0..m-1]

isMatrix :: [[a]] -> Bool
isMatrix matrix =
  not (null matrix) && all (\row -> not (null row) && length row == length (head matrix)) matrix

isSquareMatrix :: [[a]] -> Bool
isSquareMatrix matrix =
  not (null matrix) && all (\row -> length row == length matrix) matrix

addable :: Num a => [[a]] -> [[a]] -> Bool
addable matrix1 matrix2 =
  isMatrix matrix1 && isMatrix matrix2 && length matrix1 == length matrix2 && length (head matrix1) == length (head matrix2)

addMatrices :: Num a => [[a]] -> [[a]] -> [[a]]
addMatrices matrix1 matrix2 =
  if addable matrix1 matrix2 then
    zipWith (zipWith (+)) matrix1 matrix2
  else
    []

multiplyable :: Num a => [[a]] -> [[a]] -> Bool
multiplyable matrix1 matrix2 =
  isMatrix matrix1 && isMatrix matrix2 && length (head matrix1) == length matrix2

-- multiplyMatrices :: Num a => [[a]] -> [[a]] -> [[a]]
-- multiplyMatrices matrix1 matrix2 =
--   if multiplyable matrix1 matrix2 then
--     [[sum $ zipWith (*) row col | col <- transpose matrix2] | row <- matrix1]
--   else
--     []



-- Examples
main :: IO ()
main = do
  print $ f1 [1]             -- [3]
  print $ f1 [1, 2, 3]       -- [3, 0, 9]
  print $ f2 [1, 2, 3, 2, 1] -- [2, 3]
  print $ f3 [1, 1, 1, 2, 2, 3, 3, 3, 3] -- [1, 2, 3]
  print $ f4 [1, 2, 3, 4, 5] -- [[1,2,3,4,5]]