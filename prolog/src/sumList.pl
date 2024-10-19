/*------------------------< SumList >------------------------*/

sumList([], 0).
sumList([A|As], R) :- sumList(As, R2), R is R2 + A.
