-- This program sums the contents of two lists
-- After compiling it, enter s2l <list1> <list2>

s2l [] lst = lst    -- If the first list is shorter than the second list
s2l lst [] = lst    -- If the second list is shorter than the first list
s2l (a:xs) (b:ys) = a + b : s2l xs ys   -- Sum the contents of the lists
