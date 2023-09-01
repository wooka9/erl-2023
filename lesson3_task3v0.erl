-module(lesson3_task3v0).
-export([split/2]).
split(Bin, Sep) -> split(Bin, Sep, <<>>, []).

split(<<Sep:3/binary, T/binary>>, Sep, Word, List) ->
    split(T, Sep, <<>>, [Word|List]);
split(<<H/utf8, T/binary>>, Sep, Word, List) ->
    split(T, Sep, <<Word/binary, H/utf8>>, List);
split(<<>>, _, Word, List) ->
    [Word|List].
