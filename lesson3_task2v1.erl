-module(lesson3_task2v1).
-export([words/1]).
words(B) -> words(B, <<>>, []).
words(<<" ",T/binary>>, A, L) -> words(T, <<>>, [A|L]);
words(<<H/utf8, T/binary>>, A, L) -> words(T, <<A/binary, H/utf8>>, L);
words(<<>>, A, L) -> [A|L].
