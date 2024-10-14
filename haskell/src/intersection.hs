-- This program returns the insersection between two lists
-- After compiling it, enter intersection <list1> <list2>

-- Main function "intersection"
-- Base case: the intersection between an empty list and another list is empty
intersection [] lst = []
-- Traverse the first list, comparing each element to each element of the second list and if they are equal add the element to the result list
-- Recursion: otherwise, remove the actual element (a) and recursively call the function passing the remaining elements of the first list (xs) and the second list (lst) as arguments
intersection (a : xs) lst | member a lst = a : intersection xs lst | otherwise = intersection xs lst

-- Helper function "member"
-- Verify if the element is in the list
member _ [] = False
member elt (b : ys) | elt == b = True | otherwise = member elt ys
