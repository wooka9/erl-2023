-module(lesson2_task07).
-export([flatten/1]).
flatten(L) -> flatten(L,[]).
flatten([],F) -> F;
flatten([H|T],F) -> flatten(H,flatten(T,F));
flatten(H,F) -> [H|F].
