-- This program accepts a list and swaps the first and the second elements, the third and the fourth elements and so on
-- After compiling it, enter trok2 <list>

trok2 [] = []
trok2 [n] = [n]
trok2 (a : b : xs) = b : a : trok2 xs
