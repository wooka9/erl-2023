-module(lesson2_task12).
-export([decode_modified/1]).
decode_modified([{1,C}|T]) -> [C|decode_modified(T)];
decode_modified([{N,C}|T]) -> [C|decode_modified([{N-1,C}|T])];
decode_modified([H|T]) -> [H|decode_modified(T)];
decode_modified([]) -> [].
