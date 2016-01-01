-module(erlifs_if2).

-export([greetings/2]).


greetings(Name, Locale) ->
    Greeting = if
                   Locale =:= "EN" -> "Hi " ++ Name ++ "!";
                   Locale =:= "FR"  -> "Salut " ++ Name ++ "!";
                   Locale =:= "HU"  -> "Szia " ++ Name ++ "!";
                   true -> "Hello " ++ Name ++"!"
               end,
    io:format(Greeting, []).

