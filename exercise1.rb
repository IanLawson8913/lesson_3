# Q1 What would you expect the code to print out?

numbers = [1, 2, 2, 3]
numbers.uniq

puts numbers

# would print each value of the original array

# Q2 Describe the difference between ! and ? in Ruby. Explain what would happen in the following scenarios:
Describe the difference between ! and ? in Ruby. 

#---In Ruby ! is added to a method to signify that the method will be mutating the caller. 
#---? is added to a method to signify that the method is evaluating a given condition of an object, ex. does it contain a char or is it true?

And explain what would happen in the following scenarios:

what is != and where should you use it? # Not equal to operator. Use it to check if a certain cindition is not equal to another condition
put ! before something, like !user_name # used to turn object into opposite of their boolean equiv.
put ! after something, like words.uniq! # to mutate the caller 
put ? before something # ? used as ternary operator for if..else statements
put ? after something
put !! before something, like !!user_name # turn object into their boolean equivalent

# Replace the word "important" with "urgent" in this string:

advice = "Few things in life are as important as house training your pet dinosaur."

p advice.gsub("important", "urgent")

#The Ruby Array class has several methods for removing items from the array. 
#Two of them have very similar names. Let's see how they differ:

numbers = [1, 2, 3, 4, 5]

numbers.delete_at(1) # delete's index 1 of array, returns index 1
numbers.delete(1) # delete's the number 1 of array, returns number 1

# Programmatically determine if 42 lies between 10 and 100. |

(10..100).cover?(42)

#Starting with the string:  
#show two different ways to put the expected "Four score and " in front of it.

famous_words = "seven years ago..."

"Four score and ".concat(famous_words)
"Four score and " << famous_words
"Four score and " + famous_words
famous_words.prepend("Four score and ")

## => "add_eight(add_eight(add_eight(add_eight(add_eight(number)))))"

def add_eight(number)
  number + 8
end

number = 2

how_deep = "number"
5.times { how_deep.gsub!("number", "add_eight(number)") }

p how_deep  # => add_eight(add_eight(add_eight(add_eight(add_eight(number)))))

eval(how_deep)

# Make this into an un-nested array.

["Fred", "Wilma", ["Barney", "Betty"], ["BamBam", "Pebbles"]].flatten

# Turn this into an array containing only two elements: Barney's name and Barney's number

flintstones = { "Fred" => 0, "Wilma" => 1, "Barney" => 2, "Betty" => 3, "BamBam" => 4, "Pebbles" => 5 }

flintstones.to_a[2]
flintstones.assoc("Barney")

# Turn this array into a hash where the names are the keys and the values are the positions in the array.

flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]

[flintstones, [0, 1, 2, 3, 4, 5]].to_h