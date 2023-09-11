-- defining a data type for only positive numbers
-- Nat is the name of the data type
-- Zero and Succ are the value constructors
-- So type of Zero will be Nat and Succ will be Nat->Nat

data Nat = Zero | Succ Nat

-- Now we can define functions
iszero :: Nat -> Bool
iszero Zero = True
iszero (Succ _) = False

-- computing predecessor of a natural number
pred :: Nat -> Nat
pred Zero = Zero
pred (Succ n) = n


plus :: Nat -> Nat -> Nat
plus m Zero = m
plus m (Succ n) = Succ (plus m n)


mult :: Nat -> Nat -> Nat
mult m Zero = Zero
mult m (Succ n) = plus (mult m n) m

main  = do
    print(iszero Zero)





