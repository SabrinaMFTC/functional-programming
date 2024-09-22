-- To compile everything, you can type ghci <fileName.hs>
-- To run it, you can type <functionName> <objectName>

-- Creating our Tree class
data Tree = Leaf Integer | Node Integer Tree Tree
     deriving (Eq, Show)

-- Instantiating a tree
t1 = Node 12
    (Node  8 (Leaf  6) (Leaf 10))
    (Node 16 (Leaf 14) (Leaf 18))

--           12
--          /  \
--         /    \
--        8     16
--       / \    / \
--      6  10  14  18

---------------------------------
-- Sum only the leaves = 48
---------------------------------
sumLeaves (Leaf value) = value
sumLeaves (Node value leftTree rightTree) = sumLeaves leftTree + sumLeaves rightTree

---------------------------------
-- Sum only the other nodes = 36
---------------------------------
sumNodes (Leaf _) = 0
sumNodes (Node value leftTree rightTree) = value + sumNodes leftTree + sumNodes rightTree

---------------------------------
-- Sum all nodes = 84
---------------------------------
sumAll (Leaf value) = value
sumAll (Node value leftTree rightTree) = value + sumAll leftTree + sumAll rightTree

---------------------------------
-- Pre order
---------------------------------
preO = [12, 8, 6, 10, 16, 14, 18]

preOrder (Leaf value) = [value]
preOrder (Node value leftTree rightTree) = [value] ++ preOrder leftTree ++ preOrder rightTree

---------------------------------
-- In order
---------------------------------
inO = [6, 8, 10, 12, 14, 16, 18]

inOrder (Leaf value) = [value]
inOrder (Node value leftTree rightTree) = inOrder leftTree ++ [value] ++ inOrder rightTree

---------------------------------
-- Post order
---------------------------------
postO = [6, 10, 8, 14, 18, 16, 12]

postOrder (Leaf value) = [value]
postOrder (Node value leftTree rightTree) = postOrder leftTree ++ postOrder rightTree ++ [value]

---------------------------------
-- Tree height = 2
---------------------------------
height (Leaf _) = 0
height (Node _ leftTree rightTree) = 1 + greater (height leftTree) (height rightTree)

greater a b | a > b = a | otherwise = b

-- Instantiating a second tree
t2 = Node 5
    (Node 10 (Leaf  5) (Leaf 10))
    (Node 5  (Leaf 10) (Leaf  5))

--           5
--          / \
--         /   \
--        10    5
--       / \   / \
--      5  10 10  5

--------------------------------------------------------------------------
-- Replacing value a for value b: type replace 5 555 t2 or replace 10 1000
--------------------------------------------------------------------------
replace a b (Leaf value) | value == a = Leaf b | otherwise = Leaf value

replace a b (Node value leftTree rightTree) | value == a = Node b (replace a b leftTree) (replace a b rightTree) | otherwise = Node value (replace a b leftTree) (replace a b rightTree)
