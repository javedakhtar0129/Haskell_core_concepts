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