%%%-------------------------------------------------------------------
%%% @author abensoft
%%% @copyright (C) 2025, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 05. Aug 2025 2:28 PM
%%%-------------------------------------------------------------------
-module(joao_exercicio11).
-author("abensoft").

%% API
-export([find_smallest/1]).

%%Encontrar o Menor Elemento de uma Lista
%%Implemente uma função menor/1 que encontra o menor elemento em uma lista de números.Verificar se um Elemento está em uma
%%


find_smallest([Head | Tail]) ->
  find_smallest(Tail, Head);
find_smallest(_) ->
  {error, not_a_list}.
find_smallest([Head | Tail], Smallest) when Head < Smallest ->
  find_smallest(Tail, Head);

find_smallest([Head | Tail], Smallest) ->
  find_smallest(Tail, Smallest);

find_smallest([], Smallest) ->
  Smallest.