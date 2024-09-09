-- This program sums the elements of a list
-- After compiling it, enter sumElements <list>
sumElements [] = 0
sumElements (a : xs) = a + sumElements xs