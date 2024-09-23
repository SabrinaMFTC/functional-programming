-- This program accepts a list and a natural number k and sums each k elements
-- After compiling it, enter totk <k> <list>
-- Input sample: [1,1,1,1,1,1,1,1,1,1,1,1]
-- Expected output: [5,5,2]

-- The function totk calls a function tot passing as parameters: k, 0 (initial counter), 0 (initial total) and the list
totk _ [] = []
totk k lst = tot k 0 0 lst

-- Base cases: if the total isn't 0, add the remaining sum to the list and return it; otherwise it returns an empty list
tot _ _ t []
 | t /= 0    = [t]
 | otherwise = []  

-- Recursion: if the count is equal to k, add the total to the list and recursively call the function, reseting the counter and the total; otherwise recursivelly call the function incrementing the counter and summing the element to the total
tot k c t (a : xs)
 | k == c    = t : tot k 0 0 (a : xs)
 | otherwise = tot k (c + 1) (a + t) xs
