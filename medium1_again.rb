###

# 10.times { |x| puts (" " * x) + "The Flinstones Rock!" }

### 

# statement = "The Flintstones Rock"

# letter_freq_hash = {}

# letters = ('A'..'Z').to_a + ('a'..'z').to_a

# letters.each do |letter|
#   letter_freq = statement.scan(letter).count
#   letter_freq_hash[letter] = letter_freq if letter_freq > 0
# end

# puts letter_freq_hash

###

# puts (40 + 2).to_s + " string stuff"

# puts "the value of 40 + 2 is #{40 + 2}"

###

# def factors(number)
#   dividend = number
#   divisors = []
#   begin
#     divisors << number / dividend if number % dividend == 0
#     dividend -= 1
#   end until dividend == 0
#   divisors
# end

# factors()

# def factors_fix(number)
#   dividend = number
#   divisors = []
#   if number > 0
#     divisors << number / dividend if number % dividend == 0
#     dividend -= 1
#   else
#     puts "Please use a positive number greater than 0."
#   end
#   p divisors
# end

# factors_fix(0)

# number % dividend == 0 : this prevents numbers that divide with a remainder from being added to the array

# the second to last line specifies the return value for the method

###

# rolling_buffer2("", 3, "One")

# Yes, there is a difference. While both methods have the same return value, in the first implementation, the input argument called buffer will be modified and will end up being changed after rolling_buffer1 returns. That is, the caller will have the input array that they pass in be different once the call returns. In the other implementation, rolling_buffer2 will not alter the caller's input argument.

###

# def fib(first_num, second_num)
#   limit = 15
#   while second_num < limit
#     sum = first_num + second_num
#     first_num = second_num
#     second_num = sum
#   end
#   sum
# end

# result = fib(0, 1)
# puts "result is #{result}"

###

# words = "the flintstones rock!"

# p words.split.map { |x| x.capitalize }.join(' ')

###

# munsters = {
#   "Herman" => { "age" => 32, "gender" => "male" },
#   "Lily" => { "age" => 30, "gender" => "female" },
#   "Grandpa" => { "age" => 402, "gender" => "male" },
#   "Eddie" => { "age" => 10, "gender" => "male" },
#   "Marilyn" => { "age" => 23, "gender" => "female"}
# }

# munsters.each do |name, details|
#   case details["age"]
#   when 0..18
#     details["age_group"] = "kid"
#   when 18...65
#     details["age_group"] = "adult"
#   else
#     details["age_group"] = "senior"
#   end
# end

# p munsters

###

p Yay!