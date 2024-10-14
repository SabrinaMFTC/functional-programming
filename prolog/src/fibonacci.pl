/*------------------------< Fibonacci >------------------------*/

/* Base Case */
fibo(0,0).
fibo(1,1).

/* Recursion */
fibo(N,R) :-
    N1 is N-1,
    N2 is N-2,
    fibo(N1,R1),
    fibo(N2,R2),
    R is R1+R2.

/*
    Try: fibo(5,R).
    The answer will be: R = 5
    If you type . it means you accept the answer
    If you type ; it means you don't accept the answer and the program will break
*/
