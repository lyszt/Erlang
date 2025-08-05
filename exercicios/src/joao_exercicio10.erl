%%%-------------------------------------------------------------------
%%% @author abensoft
%%% @copyright (C) 2025, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 05. Aug 2025 2:17 PM
%%%-------------------------------------------------------------------
-module(joao_exercicio10).
-author("abensoft").

%% API
-export([filter_odd/1]).

%%
%%Filtrar Elementos de uma Lista
%%Crie uma função filtra/2 que retorna uma nova lista contendo apenas os elementos que satisfazem uma condição.
%%Nesta função vocês precisam passar uma fun como parâmetro!!!
%%

filter_odd(List)->
  F = fun(Element) when Element rem 2 == 0->
    {true, Element};
    (_) ->
      false
    end,
  lists:filtermap(F, List).


