/*------------------------< Fatorial >------------------------*/

/*
    0! = 1
    N! = N * (N-1)!
*/

/* Base Case */
fat(0,1).

/* Recursion */
fat(N,R) :-
    N2 is N-1,
    fat(N2,R2),
    R is R2 * N.

/*
    Try: fat(5,P).
    The answer will be: P = 120
    If you type . it means you accept the answer
    If you type ; it means you don't accept the answer and the program will break
*/
