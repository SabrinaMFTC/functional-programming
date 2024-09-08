-- This program sums the elements of a list
-- After compiling it, enter sum <list>
total [] = 0
total (a : xs) = a + total xs