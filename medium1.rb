# For this exercise, write a one-line program that creates the following output 10 times, with the subsequent line indented 1 space to the right:

The Flintstones Rock!
 The Flintstones Rock!
  The Flintstones Rock!

10.times { |number| puts (" " * number) + "The Flintstones Rock!" }

# Create a hash that expresses the frequency with which each letter occurs in this string:

statement = "The Flintstones Rock"

result = {}
letters = ('A'..'Z').to_a + ('a'..'z').to_a
letters.each do |letter|
  letter_frequency = statement.scan(letter).count
  result[letter] = letter_frequency if letter_frequency > 0
end

# The result of the following statement will be an error: Why is this and what are two possible ways to fix this?
# You can't append an integer to a string

puts "the value of 40 + 2 is " + (40 + 2)
puts "the value of 40 + 2 is " + (40 + 2).to_s
puts "the value of 40 + 2 is #{40 +2}"