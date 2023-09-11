-- Recursive data types can also be polymorphic in nature
-- Structure of a binary tree is like : empty tree is binary tree 
-- A node containing left and right subtrees is a binary tree

data BTree a = Empty | Node (BTree a) a (BTree a) deriving (Eq)

-- type of Empty will be BTree a
-- type of Node :: BTree a -> a -> BTree a -> BTree a 

-- eg of BTree will be Node (Node Empty 2 Empty ) 3 (Node Empty 5 Empty)

sizeTree :: BTree a -> Int
sizeTree Empty = 0
sizeTree (Node tl x tr) = sizeTree tl + 1 + sizeTree tr


heightTree :: BTree a -> Int
heightTree Empty = 0
heightTree (Node tl x tr) = 1 + max (heightTree tl) (heightTree tr)


-- reflect means to create a mirror image of Tree which means left becomes right
reflectTree :: BTree a -> BTree a
reflectTree Empty = Empty
reflectTree (Node tl x tr) = Node (reflectTree tr) x (reflectTree tl)


-- levels is function that prints list of each nodes at each level

join :: [[a]] -> [[a]] -> [[a]]
join [ ] yss = yss
join xss [] = xss
join (xs:xss) (ys:yss) = (xs++ys):join xss yss

myLevels :: BTree a -> [[a]]
myLevels Empty = []
myLevels (Node tl x tr) = [x]: join (myLevels tl) (myLevels tr)

-- Showing Trees 
tree1 = Node (Node Empty 4 Empty) 6 (Node (Node Empty 2 Empty) 3 (Node Empty 5 Empty))


instance (Show a) => Show (BTree a)
    where 
        show t = drawTree t ""

drawTree :: (Show a) => BTree a -> String -> String
drawTree Empty spaces = spaces ++ "*\n"
drawTree (Node Empty x Empty) spaces = spaces ++ show x ++ "\n"
drawTree (Node tl x tr) spaces = spaces ++ show x ++ "\n" 
                                ++ drawTree tl (' ':' ':spaces) 
                                ++ drawTree tr(' ':' ':spaces)

