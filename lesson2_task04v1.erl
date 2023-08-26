-module(lesson2_task04).
-export([len/1]).
len([]) -> 0;
len([_|T]) -> lenn(T,1).
lenn([],N) -> N;
lenn([_|T],N) -> lenn(T,N+1).
