-module(erlifs_if).

-export([greetings/2]).


greetings(Name, Language) ->
    Greeting = if
                   Language =:= "EN" -> "Hi " ++ Name ++ "!";
                   true ->
                       if
                           Language =:= "FR"  -> "Salut " ++ Name ++ "!";
                           true ->
                               if
                                   Language =:= "HU"  -> "Szia " ++ Name ++ "!";
                                   true -> "Hello " ++ Name ++"!"
                               end
                       end
               end,
    io:format(Greeting, []).

