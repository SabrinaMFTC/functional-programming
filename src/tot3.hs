-- This program accepts a list and performs a sum each three elements
-- After compiling it, enter tot3 <list>
-- Input sample 1: tot3 [1, 1, 1, 2, 2, 2, 3, 3, 3, 4, 4]
-- Input sample 2: tot3 [1, 1, 1, 2, 2, 2, 3, 3, 3, 4]

-- Base case: if the list has less than three elements (0, 1 or 2 elements)
tot3 [] = []
tot3 [a] = [a]
tot3 [a, b] = [a, b]
-- Recursion: sum each three elements and recursively call the function passing the remaining elements as parameter
tot3 (a : b : c : xs) = a + b + c : tot3 xs
