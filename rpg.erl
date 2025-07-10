-module(rpg).
-export([main/1]).
%% bin/zotonic debug
%debug
% print q 
% {% debug %} e.g
% zotonic website
% wire event based server connection thing, type = submit or postback
%% We can use either
%%     erlang:display(Input).
%%  or io:format(~s~n, [Input]),

%% Interação, dentro do atendimento
%% zotonic_mod // deve começar assim
%% adicionar model-simulacao // src
%% priv/templates/simulacao
%% controllers/controller_sl_simulacao
%% dispatch temporario, dispatch -> /simulacao
%% para chamar o lambda, httpc 
%% sl_model_Schema
%% colocar no final, criar tabela
%% comandos no shell 
%%z:m(). - z:flush(). - superleme:upgrade().
%% q(). -- Não usar esse na produção
%% ctrl + c, q
%% rm -rf _build, make clean
log(Input) ->
    io:format("~s~n", [Input]).

logf(Format, Args) ->
    io:format(Format, Args).


get_input(Prompt)->
    logf("~s~n", [Prompt]),
    case io:get_line("") of
        eof -> <<"">>; %% Ctrl + D, quit
        Line -> string:trim(Line) %% Something like str.strip
    end.


main(Args) ->
    log("Welcome to the world of Batatonia."),
    log("What is your name?"),
    log("..."),
    Name = get_input("Say your name: "),
    log("..."),
    logf("...~s?!~n", [Name]),
    log("That name is familiar."),
    the_counting_madman().

loop_talk_numbers(1) ->
    log("1!!!!"),
    log("[ He seems tired, but he has a manic smile on his face. ]");
loop_talk_numbers(N) when N > 0 ->
    logf("~p~n!!", [N]),
    loop_talk_numbers(N-1).

loop_talk_numbers_backwards(MIN, MAX) when MIN == MAX ->
    log("I guess that's it.");
loop_talk_numbers_backwards(MIN,MAX) when MIN < MAX ->
    logf("~p~n!!!", [MIN]),
    loop_talk_numbers_backwards(MIN + 1, MAX).

loop_try_to_count(MIN, MAX) when MIN == MAX ->
    log("He seems pleased.");
loop_try_to_count(MIN,MAX) when MIN < MAX ->
    logf("What number comes after ~p?~n", [MIN]),
    Input = get_input("What number comes next?"),
    case string:to_integer(Input) of
        {PlayerCount, ""} when PlayerCount == MIN + 1 -> loop_try_to_count(MIN+1, MAX);
        Other -> bad_ending()
    end.

bad_ending() ->
    log("The counter starts counting every single cell in your body until you have none."),
    log("You are dead.").

the_counting_madman() ->
    log("See, I like counting."),
    log("I like counting so freaking much."),
    loop_talk_numbers(21),
    log("This was me counting down. Now let me see if I can count up."),
    log("[ You are scared. You feel the chill going up your spine. ]"),
    loop_talk_numbers_backwards(0, 11),
    log("Now it is you who is going to count."),
    log("Count."),
    loop_try_to_count(1, 11).
