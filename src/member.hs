-- This program returns True if an element is in a list or False if it isn't
-- After compiling it, enter member <element> <list>

-- The symbol "_" means anything: in an empty list there is nothing, so anything will be False
-- Base case: if the element is not found return False
member _ [] = False
-- The symbol "|"" means "if" and "| otherwise" means "else"
-- Base case: if the element is found, return True
-- Recursion: otherwise, remove the actual element (a) and recursivelly call the function passing the element (elt) and the remaining elements of the list (xs) as arguments
member elt (a : xs) | elt == a = True | otherwise = member elt xs
