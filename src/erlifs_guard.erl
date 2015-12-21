-module(erlifs_guard).

-export([greetings/2]).

greetings(Name, Locale) ->
    Greeting = greetings_1(Name, Locale),
    io:format(Greeting, []).

greetings_1(Name, Locale) when Locale =:= "EN" ->
    "Hi " ++ Name ++ "!";
greetings_1(Name, Locale) when Locale =:= "FR" ->
    "Salut " ++ Name ++ "!";
greetings_1(Name, Locale) when Locale =:= "HU" ->
    "Szia " ++ Name ++ "!";
greetings_1(Name, _) ->
    "Hello " ++ Name ++ "!".
