-module(erlifs_case).

-export([greetings/2]).

greetings(Name, Locale) ->
    Greeting = case Locale of
                   "EN" -> "Hi " ++ Name ++ "!";
                   "FR" -> "Salut " ++ Name ++ "!";
                   "HU" -> "Szia " ++ Name ++ "!";
                   _ -> "Hello " ++ Name ++ "!"
               end,
    io:format(Greeting, []).
