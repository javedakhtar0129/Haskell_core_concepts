-- In polymorphism we only care about the structure of data and not it's type
-- but a list may contain multiple function objects which can't be compared to
-- each other e.g [factorial,(+3),(*5)] = [Int->Int]

-- Ord is a type class, which means only comparable types are allowed

-- elem us used to check for wether an element belongs to a list or not
-- to check if a function f belongs to a funcList
-- f x = g x for every x, f should terminate exactly when g terminates 
-- Alan Turing proved we cannot effectively know when two func terminates,
-- Hence it is really difficult to put "==" equality over two functions

-- Because of above reason we have conditional polymorphism Eq which check '==' & '/='

-- Signatures are the types that functions in type class must support
-- Signatures of Ord is <,>,<=,>=,==,/= and signature of Eq is ==,/=
    




quick_sort :: (Ord a) => [a]->[a]
quick_sort [] = []
quick_sort (x:xs) = (quick_sort lower) ++ [splitter] ++ (quick_sort upper)
                    where
                    splitter = x
                    lower = [y| y<-xs, y<=x]
                    upper = [y| y<-xs, y>x]


