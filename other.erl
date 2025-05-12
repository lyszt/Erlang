-module(other).
-export([divide/2]).


divide(A,B) when B =/= 0 ->
    A div B;
divide(_,0) ->
    {error,division_by_zero}.