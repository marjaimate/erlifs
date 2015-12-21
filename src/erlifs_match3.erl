-module(erlifs_match3).

-export([greetings/2]).

greetings(Name, Locale) ->
    GreetingFmt = greetings_format(Locale),
    io:format(GreetingFmt, [Name]).

greetings_format("EN") ->  "Hi ~s !";

% Combine some the different approaches
greetings_format("EN-" ++ Country) ->
    case Country of
        "IE" -> "Heya ~s!";
        "GB" -> "Jolly good day to you ~s!";
        _ -> greetings_format("EN")
    end;

% Use the guards as the second check
greetings_format("DE-" ++ Country) when Country =:= "DE" ->
    "Hallo, ~s!";
greetings_format("DE-" ++ Country) when Country =:= "AT" ->
    "Grüss gott ~s!";
greetings_format("DE" ++ _) ->
    "Hallo, ~s!";

% Or create a granular matching on the param
greetings_format("FR-CA") ->  "Bonjour ~s !";
greetings_format("FR" ++ _) ->  "Salut ~s !";

greetings_format("HU") ->  "Szia ~s !";
greetings_format(_) ->     "Hello ~s !".
