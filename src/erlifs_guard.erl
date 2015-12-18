-module(erlifs_guard).

-export([greetings/2]).

greetings(Name, Language) ->
    Greeting = greetings_1(Name, Language),
    io:format(Greeting, []).

greetings_1(Name, Language) when Language =:= "EN" ->
    "Hi " ++ Name ++ "!";
greetings_1(Name, Language) when Language =:= "FR" ->
    "Salut " ++ Name ++ "!";
greetings_1(Name, Language) when Language =:= "HU" ->
    "Szia " ++ Name ++ "!";
greetings_1(Name, _) ->
    "Hello " ++ Name ++ "!".
