-module(other).
-compile([export_all]).

divide(A,B) when B =/= 0 ->
    A div B;
divide(_,0) ->
    {error,division_by_zero}.



factorial(1) ->
    1;
factorial(N) ->
    N * factorial(N-1). 


see_condition(N) ->
    case N of
        1 -> "a";
        2-> "kdfakfak";
        Other -> ":("
    end.


convert(Day) ->
    case Day of
        monday -> 1;
        tuesday -> 2;
        wednesday -> 3;
        thursday -> 4;
        friday -> 5;
        saturday -> 6;
        sunday -> 7;
        Other -> {error, unknown_day}
    end.



