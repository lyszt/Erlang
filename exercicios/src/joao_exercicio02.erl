%%%-------------------------------------------------------------------
%%% @author abensoft
%%% @copyright (C) 2025, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 04. Aug 2025 4:57 PM
%%%-------------------------------------------------------------------
-module(joao_exercicio02).
-author("abensoft").

%% API
-export([len/2]).

%%Comprimento de uma Lista
%%Crie uma função comprimento/1 que calcula o comprimento de uma lista.

%% Comprimento de uma lista


len([Head | Tail], Acc) ->
  len(Tail, Acc + 1);
len([], Acc) ->
  Acc.