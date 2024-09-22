-- This program checks if an element is in a list and if it is, returns its index, otherwise, returns -1
-- After compiling it, enter find <element> <list>

-- Main function "find"
-- Call a helper function ("belongs"), passing 0 as the initial index
find elt lst = belongs elt lst 0

-- Helper function "belongs"
-- Base case: return -1 if the element is not found and the list is empty
-- Base case: return the index if the element is found
-- Recursion: if the list is not empty, remove the actual element (a) and recursively call the helper function, incrementing the index
belongs _ [] idx = -1
belongs elt (a : xs) idx
 | elt == a = idx
 | otherwise = belongs elt xs (idx + 1)
