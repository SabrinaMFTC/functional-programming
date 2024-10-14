-- This program accepts a list with at least two elements and returns the second to last element
-- After compiling, enter penult <list>

penult [a, b] = a
penult (a : xs) = penult xs
