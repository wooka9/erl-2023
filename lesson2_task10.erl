-module(lesson2_task10).
-export([encode/1]).
encode(L) -> encode(L,0).
encode([H,H|T],N) -> encode([H|T],N+1);
encode([H|T],N) -> [{N+1,H}|encode(T,0)];
encode([],_) -> [].
