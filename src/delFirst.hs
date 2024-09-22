-- This program acceps an integer and a list and deletes the first occurrence of that element in the list
-- After compiling it, enter delFirst <element> <list>

delFirst _ [] = []
delFirst n (a : xs)
 | n == a = xs
 | otherwise = a : delFirst n xs
