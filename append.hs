-- This program appends a number to a list
-- After compiling it, enter append <number> <list>
append n [] = [n]
append n (a : xs) = a : append n xs