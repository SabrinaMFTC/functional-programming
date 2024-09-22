-- This program accepts a list and deletes repeated elements
-- After compiling it, enter delRep <list>
-- Sample Input:    [3, 1, 2, 1, 2, 3, 1, 2]
-- Expected Output: [3, 1, 2]

-- Function delRep calls function del passing the list and an empty list as parameters
delRep lst = del lst []

-- Function del: traverse the original list and checks if each element is already in the list without repeated elements
-- If it is, recursively call itself passing the remaining elements of the original list and the new list as parameters
-- If it isn't, concatenate the element to the list and recursively calls itself passing the remaining elements of the original list and the new list with the element appended as parameters
del [] _ = []
del (a : xs) lst
 | member a lst = del xs lst
 | otherwise = a : del xs (lst ++ [a])

-- Function member: helper function to check if a given element is in a list
member _ [] = False
member n (a : xs)
 | n == a = True
 | otherwise = member n xs
