-module(lesson2_task05).
-export([reverse/1]).
reverse([]) -> [];
reverse([X|T]) -> reverse(T,[X]).
reverse([],R) -> R;
reverse([H|T],R) -> reverse(T,[H|R]).
