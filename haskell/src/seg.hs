-- This program accepts a list with at least two elements and returns the second element
-- After compiling it, enter seg <list>
-- Input samples: "a", "ab", "abc", "abcdefgh"

seg [a, b] = b
seg (a : (b : xs)) = b
