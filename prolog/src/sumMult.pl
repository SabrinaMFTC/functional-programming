/*------------------------< Sum and Multiply >------------------------*/

/* Here we have two different programs with the same name (and it's okay), one has 3 elements and the other has 5 elements */

sm([],0,0).
sm(L,S,M) :-
    sm(L,0,1,S,M).

sm([],Sac,Mac,Sac,Mac).
sm([N|Ns],Sac,Mac,S,M) :-
    Sac2 is Sac + N,
    Mac2 is Mac * N,
    sm(Ns,Sac2,Mac2,S,M).

/*------------------------< Length >------------------------*/

len([],0).
len([_|As],R) :-
    len(As,R2),
    R is R2 + 1.

/*
    Try: len([1,2,3,4,5],L).
    The answer should be: L = 5.

    Try: sm([1,2,3,10],S,M).
    The answer should be: S = 16, M = 60.
*/
