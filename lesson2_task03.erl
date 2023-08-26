-module(lesson2_task03).
-export([element_at/2]).
element_at([X|_],1) -> X;
element_at([_|T],N) -> element_at(T,N-1);
element_at([],_) -> undefined.
