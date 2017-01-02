# What do you expect to happen when the greeting variable is referenced in the last line of the code below?

if false
  greeting = “hello world”
end

greeting # returns nil, variables initialized withing an if block are initialized to nil. 
         # Usually uninitialled variables cause exception to be thrown

# What is the result of the last line in the code below?

greetings = { a: 'hi' }
informal_greeting = greetings[:a] # => "hi"
informal_greeting << ' there' # => "hi there"

puts informal_greeting  #  => "hi there"
puts greetings # => { a: 'hi there' }

# The output is {:a=>"hi there"}. The reason is because informal_greeting is a reference to the original object. 
# The line informal_greeting << ' there' was using the String#<< method, which modifies the object that called it. 
# This means that the original object was changed, thereby impacting the value in greetings. 
# If instead of modifying the original object, we wanted to only modify informal_greeting 
# but not greetings, there are a couple of options:

# we could initialize informal_greeting with a reference to a new object containing the same value by 
# informal_greeting = greetings[:a].clone.
# we can use string concatenation, informal_greeting = informal_greeting + ' there', which returns a 
# new String object instead of modifying the original object.

def mess_with_vars(one, two, three)
  one = two
  two = three
  three = one
end

one = "one"
two = "two"
three = "three"

mess_with_vars(one, two, three)

puts "one is: #{one}" # => one
puts "two is: #{two}" # => two
puts "three is: #{three}" # => three

# 

def mess_with_vars(one, two, three)
  one = "two"
  two = "three"
  three = "one"
end

one = "one"
two = "two"
three = "three"

mess_with_vars(one, two, three)

puts "one is: #{one}" # => one
puts "two is: #{two}" # => two
puts "three is: #{three}" # => three

# 

def mess_with_vars(one, two, three)
  one.gsub!("one","two")
  two.gsub!("two","three")
  three.gsub!("three","one")
end

one = "one"
two = "two"
three = "three"

mess_with_vars(one, two, three)

puts "one is: #{one}" # => two
puts "two is: #{two}" # => three
puts "three is: #{three}" # => one

# --- Each UUID consists of 32 hexadecimal characters, and is typically broken into 5 sections 

# like this 8-4-4-4-12 and represented as a string.

# It looks like this: "f65c57f6-a6aa-17a8-faa1-a67f2dc9fa91"

# Write a method that returns one UUID when called with no parameters.

# UUID maker

def make_uuid
  hex_arr = (0..9).to_a + ('a'..'f').to_a
  hex_arr = hex_arr.map!(&:to_s)
  
  uuid = ""
  sections = [8, 4, 4, 4, 12] 
  sections.each_with_index do |section, index|
    section.times { uuid += hex_arr.sample }
    uuid += '-' unless index >= sections.size - 1
  end

  uuid
end

puts make_uuid

# sections of the uuid - used by each_with_index and section.times to:
# specify how many times a random hex digit is added to the UUID string

# alternative digit array:

  characters = []
  (0..9).each { |digit| characters << digit.to_s }
  ('a'..'f').each { |digit| characters << digit }

# --- 

def dot_separated_ip_address?(input_string)
  dot_separated_words = input_string.split(".")
  return false unless dot_separated_words.size == 4

  while dot_separated_words.size > 0 do
    word = dot_separated_words.pop
    return false unless is_an_ip_number?(word)
  end

  true
end

# Program purpose: determine if a given string is a dot separated IP address 

# ln2 - set variable dot_separated_words = array of numbers seperated by "."s  12.123.12.12 => ['12', '123', '12', '12']

# ln3 - if array has more than 0 values, do this
#       - take away the last value of the array, return that number. Mutate original array  ??? Why ???
#       - 