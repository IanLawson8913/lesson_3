# In this hash of people and their age, see if "Spot" is present.

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

ages.has_key?("Spot")

ages.fetch("Spot", "Spot isn't in this hash.")

ages["Spot"]

ages.include?("Spot")

# Add up all of the ages from our current Munster family hash:

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, 
         "Marilyn" => 22, "Spot" => 237 }

ages.values.inject(:+)

# throw out the really old people (age 100 or older).

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

ages.delete_if {|_, age| age >= 100}
ages.keep_if {|_, age| age < 100}

# Convert the string in the following ways (code will be executed on original munsters_description

munsters_description = "The Munsters are creepy in a good way."

"The munsters are creepy in a good way."
munsters_description.capitalize!

"tHE mUNSTERS ARE CREEPY IN A GOOD WAY."
munsters_description.swapcase!

"the munsters are creepy in a good way."
munsters_description.downcase!

"THE MUNSTERS ARE CREEPY IN A GOOD WAY."
munsters_description.upcase!

# add ages for Marilyn and Spot to the existing hash

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10 }
additional_ages = { "Marilyn" => 22, "Spot" => 237 }

ages.merge(additional_ages)

# Pick out the minimum age from our current Munster family hash:

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

ages.values.min

# See if the name "Dino" appears in the string below:

advice = "Few things in life are as important as house training your pet dinosaur."

advice.include?("Dino")
advice.match("Dino")

# Find the index of the first name that starts with "Be"

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

flintstones.index { |name| name[0, 2] == "Be" }

# Using array#map!, shorten each of these names to just 3 characters:

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

flintstones.map! { |name| name[0,2]}