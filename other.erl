-module(other).
-export([divide/2]).
-export([factorial/1]).

divide(A,B) when B =/= 0 ->
    A div B;
divide(_,0) ->
    {error,division_by_zero}.



factorial(1) ->
    1;
factorial(N) ->
    N * factorial(N-1). 