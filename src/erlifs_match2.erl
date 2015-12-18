-module(erlifs_match2).

-export([greetings/2]).

greetings(Name, Language) ->
    GreetingFmt = greetings_format(Language),
    io:format(GreetingFmt, [Name]).

greetings_format("EN") ->  "Hi ~s !";
greetings_format("FR") ->  "Salut ~s !";
greetings_format("HU") ->  "Szia ~s !";
greetings_format(_) ->     "Hello ~s !".
