-module(lesson2_task13).
-export([decode/1]).
decode([{1,C}|T]) -> [C|decode(T)];
decode([{N,C}|T]) -> [C|decode([{N-1,C}|T])];
decode([]) -> [].
