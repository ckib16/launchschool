# Write a method that takes one argument, a string, and returns the same string with the words in reverse order.
#
# Examples:
#
# puts reverse_sentence('') == ''
# puts reverse_sentence('Hello World') == 'World Hello'
# puts reverse_sentence('Reverse these words') == 'words these Reverse'
# The tests above should print true.

# input - string
# output - string
# data structure - array
# algo: input -> split into array of words, reverse order words, join words back into string, puts out string

def reverse_sentence(input_string)
  word_array = input_string.split(' ')
  word_array.reverse.join(' ')
end

puts reverse_sentence('') == ''
puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'
