-module(lesson2_task11).
-export([encode_modified/1]).
encode_modified(L) -> encode_modified(L,0).
encode_modified([H,H|T],N) -> encode_modified([H|T],N+1);
encode_modified([H|T],0) -> [H|encode_modified(T,0)];
encode_modified([H|T],N) -> [{N+1,H}|encode_modified(T,0)];
encode_modified([],_) -> [].

