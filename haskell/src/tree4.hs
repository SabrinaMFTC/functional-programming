-- This program replaces the values of all nodes in a tree for their respective height
-- After compiling it, enter replace tree

data T = F Int | N Int T T
    deriving(Eq, Show)

tree = N 5 (N 5 (F 5) (F 5)) (F 5)

--      5                    2
--     / \                  / \
--    /   \                /   \
--   5     5     ===>     1     0
--  / \                  / \
-- 5   5                0   0

height (F _) = 0
height (N v left right) = 1 + greater (height left) (height right)

greater a b
 | a > b = a
 | otherwise = b 

replace (F _) = F 0
replace (N v left right) = N (height (N v left right)) (replace left) (replace right)
