-- This program instantiates a tree object and replaces nodes values with their number of occurrences in the tree
-- After compiling it, enter rep tree

data T = F Int | N Int T T
    deriving (Show, Eq)

tree = N 5 (N 5 (F 2) (F 2)) (F 2)

--      5                    2
--     / \                  / \
--    /   \                /   \
--   5     2     ===>     2     3
--  / \                  / \
-- 2   2                3   3

rep tree = repTree tree (flatten tree)

repTree (F v) lst = F (count v lst)
repTree (N v left right) lst = N (count v lst) (repTree left lst) (repTree right lst)

flatten (F v) = [v]
flatten (N v left right) = [v] ++ flatten left ++ flatten right

count v lst = cnt v 0 lst

cnt _ c [] = c
cnt v c (a : xs)
 | v == a    = cnt v (c+1) xs
 | otherwise = cnt v c xs
