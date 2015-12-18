-module(erlifs_case).

-export([greetings/2]).

greetings(Name, Language) ->
    Greeting = case Language of
                   "EN" -> "Hi " ++ Name ++ "!";
                   "FR" -> "Salut " ++ Name ++ "!";
                   "HU" -> "Szia " ++ Name ++ "!";
                   _ -> "Hello " ++ Name ++ "!"
               end,
    io:format(Greeting, []).
