-- One more way to write typeclass is records


-- First Person is type second is constructor, we do this when only one constructor present
data Person = Person String Int Float String
                deriving Show


guy = Person "Alpha" 21 5.8 "+9112904041" 

name :: Person -> String
name (Person n _ _ _) = n

age :: Person -> Int
age (Person _ a _ _) = a

tallness :: Person -> Float
tallness (Person _ _ t _) = t

phone :: Person -> String
phone (Person _ _ _ p) = p


-- This can be tedious so we can use dictionary records

data Person1 = Person1 { 
                name1 :: String,
                age1 :: Int,
                tallness1 :: Float,
                phone1 :: String
            }

guy1 = Person1 { 
                name1 ="Beta",
                age1= 22,
                tallness1 = 5.1,
                phone1 = "+910071" 
            }


