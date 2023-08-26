% lesson2_task01:last
-module(lesson2_task01).
-export([last/1]).
last([L|[]]) -> L;
last([_|T]) -> last(T).
