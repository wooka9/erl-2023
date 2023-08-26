-module(lesson2_task15).
-export([replicate/2]).
replicate([H|T],N) -> replicate([H|T],N,N).
replicate([H|T],N,1) -> [H|replicate(T,N,N)];
replicate([H|T],N,I) -> [H|replicate([H|T],N,I-1)];
replicate([],_,_) -> [].
