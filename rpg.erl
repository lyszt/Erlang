-module(rpg).
-export([main/1]).

%% We can use either
%%     erlang:display(Input).
%%  or io:format(~s~n, [Input]),
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
    log("That name is familiar.").
