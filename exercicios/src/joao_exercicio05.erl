%%%-------------------------------------------------------------------
%%% @author abensoft
%%% @copyright (C) 2025, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 05. Aug 2025 1:19 PM
%%%-------------------------------------------------------------------
-module(joao_exercicio05).
-author("abensoft").

%% API
-export([isOdd/1]).

%%Verificar se um Número é Par
%%Crie uma função par/1 que verifica se um número é par.


isOdd(N) when N rem 2 == 0 ->
  true;
isOdd(N) ->
  false.