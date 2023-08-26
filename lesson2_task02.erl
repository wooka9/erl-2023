-module(lesson2_task02).
-export([but_last/1]).
but_last([L|[]]) -> [L,[]];
but_last([P,L|[]]) -> [P,L];
but_last([_|T]) -> but_last(T).
