/*------------------------< SumListsAcc >------------------------*/

sum2LAcc(L1, L2, R) :- sum2LAcc(L1, L2, [], R).

sum2LAcc([], L, Lac, R) :- append(Lac, L, R).
sum2LAcc(L, [], Lac, R) :- append(Lac, L, R).
sum2LAcc([A|As], [B|Bs], Lac, R) :-
    S is A + B,
    append(Lac, [S], Lac2),
    sum2LAcc(As, Bs, Lac2, R).
