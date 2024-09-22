-- This program calculates the factorial of a number
-- After compiling it, enter fact <number>

fact 0 = 1
fact n = n * fact(n-1)
