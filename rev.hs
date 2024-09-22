-- This program reverses a list
-- After compiling it, enter rev <list>

-- Base case: the list is empty
rev [] = []
-- Recursion: recursively call the function passing the remaining list as parameter and, in the end, starts unwinding and appending the elements in reverse order
rev (a : xs) = rev xs ++ [a]
