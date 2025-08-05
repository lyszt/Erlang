%%%-------------------------------------------------------------------
%%% @author abensoft
%%% @copyright (C) 2025, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 05. Aug 2025 3:15 PM
%%%-------------------------------------------------------------------
-module(joao_exercicio14).
-author("abensoft").

%%Encontrar Todos os Pares em uma Lista
%%Implemente uma função encontra_pares/1 que retorna uma lista contendo apenas os números pares.
%%


%% API
-export([find_odd/1]).


find_odd(List1) ->
  F = fun(Element) when Element rem 2 == 0->
      {true, Element};
    (_) ->
      false
end,
lists:filtermap(F, List1).