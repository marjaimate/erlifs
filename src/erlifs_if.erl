-module(erlifs_if).

-export([greetings/2]).


greetings(Name, Locale) ->
    Greeting = if
                   Locale =:= "EN" -> "Hi " ++ Name ++ "!";
                   true ->
                       if
                           Locale =:= "FR"  -> "Salut " ++ Name ++ "!";
                           true ->
                               if
                                   Locale =:= "HU"  -> "Szia " ++ Name ++ "!";
                                   true -> "Hello " ++ Name ++"!"
                               end
                       end
               end,
    io:format(Greeting, []).

