# Write a method that takes one argument, a string containing one or more words, and returns the given string with all five or more letter words reversed. Each string will consist of only letters and spaces. Spaces should be included only when more than one word is present.
#
# Examples:
#
# puts reverse_words('Professional')          # => lanoisseforP
# puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
# puts reverse_words('Launch School')         # => hcnuaL loohcS

# input - string
# output - string
# data - string
# algo -
# -> split into array of words
# -> count if words char is >= 5 and if so, reverse order of chars
# -> print string

def reverse_words(input_string)
  word_array = input_string.split(' ')      # => ["Professional"], ["Walk", "around", "the", "block"], ["Launch", "School"]
  reverse_array = word_array.map do |word|  # => ["Professional"], ["Walk", "around", "the", "block"], ["Launch", "School"]
    if word.chars.count >= 5                # => true, false, true, false, true, true, true
      word.split('').reverse.join('')       # => "lanoisseforP", "dnuora", "kcolb", "hcnuaL", "loohcS"
    else
      word                                  # => "Walk", "the"
    end                                     # => "lanoisseforP", "Walk", "dnuora", "the", "kcolb", "hcnuaL", "loohcS"
  end                                       # => ["lanoisseforP"], ["Walk", "dnuora", "the", "kcolb"], ["hcnuaL", "loohcS"]
  reverse_array.join(' ')                   # => "lanoisseforP", "Walk dnuora the kcolb", "hcnuaL loohcS"
end                                         # => :reverse_words

puts reverse_words('Professional')           # => nil
puts reverse_words('Walk around the block')  # => nil
puts reverse_words('Launch School')          # => nil

# >> lanoisseforP
# >> Walk dnuora the kcolb
# >> hcnuaL loohcS
