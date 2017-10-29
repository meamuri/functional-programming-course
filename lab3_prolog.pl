/* 
Симметричен ли список?
*/
:- use_module(library(lists)).

is_sym(L) :- reverse(L,L).

my_reverse(List, Rev) :-
        my_reverse(List, Rev, []).

my_reverse([], L, L).
my_reverse([H|T], L, SoFar) :-
        my_reverse(T, L, [H|SoFar]).

is_rev(List) :- my_reverse(List, X), List == X.