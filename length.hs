-- This program calculates the length of a list
-- After compiling it, enter len <list>
len [] = 0
len (a:xs) = 1 + len xs
