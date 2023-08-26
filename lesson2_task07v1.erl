-module(lesson2_task07v1).
-export([flatten/1]).
%flatten(L) -> flatten(L,[]);
flatten([]) -> [];
flatten([[]|T]) -> T;
flatten([H|T]) -> flatten(H,flatten(T)).
flatten([],A) -> A;
flatten([H|T],A) -> flatten(H,flatten(T,A));
flatten(H,A) -> [H|A].

% [[a],b]

% [[a],b],[] -> f([a],f(b,[]))
% [b],[] -> [b]
% f([a],[b]) -> f([a],)


%	io:format("List H: ~p~n", [H]),
%	io:format("List T: ~p~n", [T]),
%	io:format("List F: ~p~n", [F]),
