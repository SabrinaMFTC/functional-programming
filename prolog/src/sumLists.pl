/*------------------------< SumLists >------------------------*/

sum2L([], L, L).
sum2L(L, [], L).
sum2L([A|As], [B|Bs], [R|Rs]) :-
    R is A + B,
    sum2L(As, Bs, Rs).
