def greetings(name, language)
  greeting = if language == "EN"
               "Hi #{name}!"
             elsif language == "FR"
               "Salut #{name}!"
             elsif language == "HU"
               "Szia #{name}!"
             else
               "Hello #{name}!"
             end
  puts greeting
end


# Test it
greetings("Joe", "EN")
greetings("Joe", "FR")
greetings("Joe", "HU")
greetings("Joe", "IT")

