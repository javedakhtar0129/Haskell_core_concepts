-- using lookup is more robust method
-- Inbuilt has this implementation  lookup :: Eq a => a -> [(a,b)] -> Maybe b

type Key = Int
type Value = String
type Table = [(Key,Value)]

myLookup :: Key -> Table -> Maybe Value
myLookup k [] = Nothing
myLookup k ((k1,v1):kvs)
    | k == k1   = Just v1
    | otherwise = myLookup k kvs


a :: Table
a =  [(0,"a"),(1,"b"),(2,"c")]


main :: IO ()
main = do
    print(myLookup 2 a)
    print(lookup 5 a)    -- inbuilt


