# Show an easier way to write this array:

flintstones = ["Fred", "Barney", "Wilma", "Betty", "BamBam", "Pebbles"]

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

# How can we add the family pet "Dino" to our usual array:

flintstones << "Dino"

# How can we add multiple items to our array? (Dino and Hoppy)

flintstones.concat( %w(Dino Hoppy))
flintstones.push("Dino").push("Dino")

# ...remove everything starting from "house".

advice = "Few things in life are as important as house training your pet dinosaur."

advice.slice!(0, advice.index('house'))

# Write a one-liner to count the number of lower-case 't' characters in the following string:

statement = "The Flintstones Rock!"

statement.scan('t').count

# Back in the stone age (before CSS) we used spaces to align things on the screen. If we had a 40 character wide table of Flintstone family members, how could we easily center that title above the table with spaces?

title = "Flintstone Family Members"

title.center(40)