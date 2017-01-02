def dot_separated_ip_address?(input_string)
  dot_separated_words = input_string.split(".")
  while dot_separated_words.size > 0 do
    word = dot_separated_words.pop
    break unless is_an_ip_number?(word)
  end
  return true
end


# Program purpose: determine if a given string is a dot separated IP address 

# ln2 - set variable dot_separated_words = array of numbers seperated by "."s  12.123.12.12 => ['12', '123', '12', '12']