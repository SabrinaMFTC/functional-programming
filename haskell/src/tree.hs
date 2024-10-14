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
sumLeaves (Leaf v) = v
sumLeaves (Node _ left right) = sumLeaves left + sumLeaves right

---------------------------------
-- Sum only the other nodes = 36
---------------------------------
sumNodes (Leaf _) = 0
sumNodes (Node v left right) = v + sumNodes left + sumNodes right

---------------------------------
-- Sum all nodes = 84
---------------------------------
sumAll (Leaf v) = v
sumAll (Node v left right) = v + sumAll left + sumAll right

---------------------------------
-- Pre order
---------------------------------
preO = [12, 8, 6, 10, 16, 14, 18]

preOrder (Leaf v) = [v]
preOrder (Node v left right) = [v] ++ preOrder left ++ preOrder right

---------------------------------
-- In order
---------------------------------
inO = [6, 8, 10, 12, 14, 16, 18]

inOrder (Leaf v) = [v]
inOrder (Node v left right) = inOrder left ++ [v] ++ inOrder right

---------------------------------
-- Post order
---------------------------------
postO = [6, 10, 8, 14, 18, 16, 12]

postOrder (Leaf v) = [v]
postOrder (Node v left right) = postOrder left ++ postOrder right ++ [v]

---------------------------------
-- Tree height = 2
---------------------------------
height (Leaf _) = 0
height (Node _ left right) = 1 + greater (height left) (height right)

greater a b
 | a > b     = a
 | otherwise = b

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
-- Replacing v a for v b: type replace 5 555 t2 or replace 10 1000
--------------------------------------------------------------------------
replace a b (Leaf v)
 | v == a     = Leaf b
 | otherwise  = Leaf v

replace a b (Node v left right)
 | v == a     = Node b (replace a b left) (replace a b right)
 | otherwise  = Node v (replace a b left) (replace a b right)
