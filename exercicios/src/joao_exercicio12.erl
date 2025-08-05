%%%-------------------------------------------------------------------
%%% @author abensoft
%%% @copyright (C) 2025, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 05. Aug 2025 2:47 PM
%%%-------------------------------------------------------------------
-module(joao_exercicio12).
-author("abensoft").

%% API
-export([contains/2]).

%%Lista
%%Crie uma função membro/2 que verifica se um elemento está presente em uma lista.
%%

contains(N, [Head | Tail]) when Head == N ->
  true;
contains(N, [Head | Tail]) ->
  contains(N, Tail);
contains(N, []) ->
  false.