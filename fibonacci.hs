-- This program finds the number in a given position in the Fibonacci sequence
-- After compiling it, enter fib <index>

fib 0 = 0
fib 1 = 1
fib n = fib(n-1) + fib(n-2)
