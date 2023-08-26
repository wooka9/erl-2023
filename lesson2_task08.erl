-module(lesson2_task08).
-export([compress/1]).
compress([H|[]]) -> [H];
compress([H,H|T]) -> compress([H|T]);
compress([H|T]) -> [H|compress(T)].
