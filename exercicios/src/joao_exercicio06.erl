%%%-------------------------------------------------------------------
%%% @author abensoft
%%% @copyright (C) 2025, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 05. Aug 2025 1:24 PM
%%%-------------------------------------------------------------------
-module(joao_exercicio06).
-author("abensoft").

%% API
-export([concatenate/2]).

%%Concatenar Duas Listas
%%Implemente uma função concatena/2 que junta duas listas.

%% Forma fácil
%%concatenate(List1, List2) ->
%%  List1 ++ List2.

% Forma feia mas mais dificil e meio errada

concatenate([Head | Tail], Acc) ->
  Appended = [Head | Acc],
  concatenate(Tail, Appended);
concatenate([], Acc) ->
  Acc.