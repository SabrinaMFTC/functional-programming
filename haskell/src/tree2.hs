-- This program instantiates a tree object and replaces leaf values with 1 and the non-leaf nodes values with 2
-- After compiling it, enter rep tree

data T = F Int | N Int T T
    deriving (Show, Eq)

tree = N 3 (N 5 (F 5) (F 5)) (F 4)

--      3                    2
--     / \                  / \
--    /   \                /   \
--   5     4     ===>     2     1
--  / \                  / \
-- 5   5                1   1

rep (F _) = F 1
rep (N _ leftTree rightTree) = N 2 (rep leftTree) (rep rightTree)
