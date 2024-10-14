-- This program accepts an integer n and a list and returns a list containing the elements that are greater than n
-- After compiling it, enter greater <n> <list>

greater _ [] = []
greater n (a : xs)
 | a > n = a : greater n xs
 | otherwise = greater n xs
