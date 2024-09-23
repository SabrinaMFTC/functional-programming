-- This program accepts a list and subtracts 1 if the element is greater than 7 and sums 1 if the elements is lesser than or equal to 7
-- After compiling it, enter sumSub <list>

sumSub [] = []
sumSub (a : xs)
 | a > 7     = a - 1 : sumSub xs
 | otherwise = a + 1 : sumSub xs
