%%%-------------------------------------------------------------------
%%% @author abensoft
%%% @copyright (C) 2025, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 04. Aug 2025 4:50 PM
%%%-------------------------------------------------------------------
-module(joao_exercicio01).
-author("abensoft").

%% API
-export([factorial/1]).

%%
%%Fatorial
%%Implemente uma função fatorial/1 que calcula o fatorial de um número usando recursão.



%% 1. Factorial
factorial(1) ->
  1;
factorial(N) ->
  N * factorial(N-1).