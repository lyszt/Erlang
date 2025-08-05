%%%-------------------------------------------------------------------
%%% @author abensoft
%%% @copyright (C) 2025, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 05. Aug 2025 1:41 PM
%%%-------------------------------------------------------------------
-module(joao_exercicio07).
-author("abensoft").

%% API
-export([reverse/1, reverter/1]).

%%Reverter uma Lista
%%Escreva uma função reverte/1 que inverte a ordem dos elementos de uma lista.

%% forma facil
reverse(List)->
  lists:reverse(List).
% lol

reverter(List) ->
  reverter(List, []).

reverter([Head | Tail], Acc) ->
  reverter(Tail, [Head | Acc]);
reverter([], Acc) ->
  Acc.