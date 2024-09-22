-- This program deletes all consecutive occurrences in a list
-- After compiling it, enter del2p <list>

del2p [] = []
del2p [a] = [a]
del2p (a : (b : xs))
 | a == b = del2p (b : xs)
 | otherwise = a : del2p (b : xs)
