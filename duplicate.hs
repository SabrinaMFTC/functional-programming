-- This program duplicates each element of a list
-- After compiling it, enter duplicate <list>

-- Base case: if the list is empty, return an empty list
duplicate [] = []
-- Recursion: duplicate the actual element (a) and recursively call the function passing the remaining elements of the list (xs) as argument
duplicate (a : xs) = a : a : duplicate xs