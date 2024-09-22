-- This program returns the last element of a list
-- After compiling it, enter lastElt <list>

-- Base case: If the list is empty, return -1
lastElt [] = -1
-- Base case: If the list only has one element, return it
lastElt [a] = a
-- Recursion: remove the actual element (a) and recursively call the function passing the remaining elements of the list (xs) as argument
lastElt (a : xs) = lastElt xs
