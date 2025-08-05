%%%-------------------------------------------------------------------
%%% @author abensoft
%%% @copyright (C) 2025, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 04. Aug 2025 5:29 PM
%%%-------------------------------------------------------------------
-module(joao_exercicio03).
-author("abensoft").

%% API
-export([fibonnaci/1]).

%%Fibonacci
%%Implemente uma função fibonacci/1 que calcula o n-ésimo número de Fibonacci.


fibonnaci(N) when N =< 1 -> N;
fibonnaci(N) ->
  fibonnaci(N-1) + fibonnaci(N-2).
