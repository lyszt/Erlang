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
%%Substituir um Elemento em uma Lista
%%Escreva uma função substitui/3 que substitui todas as ocorrências de um elemento por outro em uma lista.
%%
%%Encontrar Todos os Pares em uma Lista
%%Implemente uma função encontra_pares/1 que retorna uma lista contendo apenas os números pares.Intercalar Duas Listas
%%Crie uma função intercala/2 que combina dois elementos de duas listas alternadamente.

contains(N, [Head | Tail]) when Head == N ->
  true;
contains(N, [Head | Tail]) ->
  contains(N, Tail);
contains(N, []) ->
  false.