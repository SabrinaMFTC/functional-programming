/*------------------------< Length >------------------------*/

/*
    List examples:
    []
    [1,1,1]
    [1,a,[2,2,2]]
*/

/*
    Notation head and tail similar to Haskell -> Discarding heads until you get to the empty list.

    Example:
    [1,2,3] = [1|[2,3]] = [1|[2|[3]]] = [1|[2|[3|[]]]]

    Example:
    [A|As]
    A  = 1
    As = [2,3]     -> As is a list of the tail
*/

len([],0).
len([_|As],R) :-
    len(As,R2),
    R is R2 + 1.
