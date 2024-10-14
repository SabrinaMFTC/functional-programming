-- This program accepts an integer and a list and delete all occurrences of that element in the list
-- After compiling it, enter delAll <element> <list>

delAll _ [] = []
delAll n (a : xs)
 | n == a = delAll n xs
 | otherwise = a : delAll n xs
