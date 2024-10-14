-- This program accepts a non-empty list and returns its minimum value
-- After compiling it, enter findMin <list>

findMin [n] = n
findMin (a : xs) = minValue a xs

minValue m [] = m
minValue m (a : xs)
 | m < a = minValue m xs
 | otherwise = minValue a xs
