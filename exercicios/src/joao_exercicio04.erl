%%%-------------------------------------------------------------------
%%% @author abensoft
%%% @copyright (C) 2025, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 04. Aug 2025 5:54 PM
%%%-------------------------------------------------------------------
-module(joao_exercicio04).
-author("abensoft").

%% API
-export([max/1]).


%%Maior Elemento da Lista
%%Escreva uma função maior/1 que encontra o maior elemento de uma lista de números.


max([Head | Tail]) ->
  max(Tail, Head).

max([Head | Tail], Largest) when Largest < Head ->
  max(Tail, Head);

max([Head | Tail], Largest) ->
  max(Tail, Largest);

max([], Largest) ->
  Largest.

