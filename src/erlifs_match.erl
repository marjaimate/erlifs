-module(erlifs_match).

-export([greetings/2]).

greetings(Name, Locale) ->
    Greeting = greetings_1(Name, Locale),
    io:format(Greeting, []).

greetings_1(Name, "EN") ->
    "Hi " ++ Name ++ "!";
greetings_1(Name, "FR") ->
    "Salut " ++ Name ++ "!";
greetings_1(Name, "HU") ->
    "Szia " ++ Name ++ "!";
greetings_1(Name, _) ->
    "Hello " ++ Name ++ "!".
