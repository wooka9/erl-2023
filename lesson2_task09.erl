-module(lesson2_task09).
-export([pack/1]).
pack(L) -> pack(L,[]).
pack([H,H|T],P) -> pack([H|T],[H|P]);
pack([H|T],P) -> [[H|P]|pack(T,[])];
pack([],_) -> [].



