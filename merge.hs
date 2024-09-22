-- This program merge two lists
-- After compiling it, enter merge <list1> <list2>

merge lst [] = lst
merge [] lst = lst
merge (a : xs) (b : ys)
 | a <= b    = a : merge xs (b : ys)
 | otherwise = b : merge (a : xs) ys
