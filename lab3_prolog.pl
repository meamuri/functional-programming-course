/* 
Симметричен ли список?
*/
:- use_module(library(lists)).

is_sym(L) :- reverse(L,L).
