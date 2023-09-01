-module(lesson3_task3).
-export([split/2]).

split(Bin,Sep) ->
    BinSep=list_to_binary(Sep),
    Size=byte_size(BinSep),
    split(Bin, BinSep, Size, <<>>).

split(Bin, BinSep, Size, Word) ->

%io:format("Bin: ~p~n", [Bin]),
%io:format("Sep: ~p~n", [BinSep]),
%io:format("Word: ~p~n", [Word]),

case Bin of
    <<BinSep:Size/binary, Rest/binary>> ->
	[Word|split(Rest, BinSep, Size, <<>>)];
    <<Char/utf8, Rest/binary>> ->
	split(Rest, BinSep, Size, <<Word/binary, Char/utf8>>);
    <<>> ->
	[Word]
end.
