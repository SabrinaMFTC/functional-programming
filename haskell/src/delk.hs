-- This program accepts a list and deletes an element each k elements
-- After compiling it, enter delk k <list>

-- The function delk accepts an integer k and a list and calls the function del
delk _ [] = []
delk k lst = del k 1 lst

-- The function del acceps two integers, k and c (counter), and a list
-- If the counter is equal to k, the function is recursively called with the counter reset and the remaining elements of the list
-- Otherwise, the head is concatenated to the return and the function is recursivelly called with the counter incremented by one and the remaining elements of the list
del _ _ [] = []
del k c (a : xs) | k == c = del k 1 xs | otherwise = a : del k (c + 1) xs
