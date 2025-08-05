%%%-------------------------------------------------------------------
%%% @author abensoft
%%% @copyright (C) 2025, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 05. Aug 2025 3:22 PM
%%%-------------------------------------------------------------------
-module(joao_exercicio15).
-author("abensoft").

%% API
-export([intercalate/2]).

%% Intercalar Duas Listas
%%Crie uma função intercala/2 que combina dois elementos de duas listas alternadamente.

intercalate([Head | Tail], [Head1 | Tail1]) ->
  intercalate([Head | Tail], [Head1 | Tail1], [], 0).

intercalate([ Head | Tail], ListA, Output, Turn) when Turn == 0 ->
  intercalate(Tail, ListA, [Head | Output], 1);

intercalate(ListB, [ Head1 | Tail1], Output, Turn) when Turn == 1 ->
  intercalate(ListB, Tail1, [Head1 | Output], 0);
intercalate([], [], Output, _)->
  ReversedOutput = lists:reverse(Output),
  ReversedOutput.