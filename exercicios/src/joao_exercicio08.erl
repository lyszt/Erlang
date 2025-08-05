%%%-------------------------------------------------------------------
%%% @author abensoft
%%% @copyright (C) 2025, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 05. Aug 2025 1:46 PM
%%%-------------------------------------------------------------------
-module(joao_exercicio08).
-author("abensoft").

%% API
-export([duplicate/1]).


%%Duplicar os Elementos de uma Lista
%%Implemente uma função duplica/1 que duplica cada elemento de uma lista.

duplicate(List) ->
  duplicate(List, []).
duplicate([Head | Tail], Acc) ->
  List1 = [Head | Acc],
  List2 = [Head | List1],
  duplicate(Tail, List2);
duplicate([], Acc)->
  Final = lists:reverse(Acc),
  Final.