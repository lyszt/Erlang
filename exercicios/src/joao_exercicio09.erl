%%%-------------------------------------------------------------------
%%% @author abensoft
%%% @copyright (C) 2025, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 05. Aug 2025 1:56 PM
%%%-------------------------------------------------------------------
-module(joao_exercicio09).
-author("abensoft").

%% API
-export([count_greater_than_5_in/1]).
%%
%%Contar Elementos de uma Lista que sejam maiores que 5
%%Crie uma função conta_cond/2 que conta os elementos de uma lista que satisfazem a condição de serem maior que 5

count_greater_than_5_in([Head | Tail]) ->
  case Head > 5 of
    true ->
    count_greater_than_5_in(Tail, 1);
    false ->
    count_greater_than_5_in(Tail, 0)
  end.
count_greater_than_5_in([Head | Tail], Acc) when Head > 5 ->
  count_greater_than_5_in(Tail, Acc + 1);
count_greater_than_5_in([Head | Tail], Acc) ->
  count_greater_than_5_in(Tail, Acc);
count_greater_than_5_in([], Acc) ->
  Acc.