/*------------------------< SumListAcc >------------------------*/

sumListAcc([], 0).
sumListAcc(L, R) :-
    sumListAcc(L, 0, R).

sumListAcc([], S, S).
sumListAcc([A|As], S, R) :-
    S2 is S + A,
    sumListAcc(As, S2, R).
