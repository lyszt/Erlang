%%%-------------------------------------------------------------------
%%% @author abensoft
%%% @copyright (C) 2025, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 05. Aug 2025 2:55 PM
%%%-------------------------------------------------------------------
-module(joao_exercicio13).
-author("abensoft").

%% API
-export([replace/3]).

%%Substituir um Elemento em uma Lista
%%Escreva uma função substitui/3 que substitui todas as ocorrências de um elemento por outro em uma lista.
%%


%%[X || X <- [1, 2, 3, 4, 5], X rem 2 =:= 1].

replace(Target, Replacement, List) ->
  lists:map(fun(Element) ->
    case Element of
      Target ->
        Replacement;
      _ ->
        Element
    end
  end, List).