# Write a method that takes one argument, a positive integer, and returns a list of the digits in the number.
#
# Examples:
#
# puts digit_list(12345) == [1, 2, 3, 4, 5]
# puts digit_list(7) == [7]
# puts digit_list(375290) == [3, 7, 5, 2, 9, 0]
# puts digit_list(444) == [4, 4, 4]
# All of the tests above should print true.

# input - integer (positive)
# output = array of integers as single digits

# data structure - array
#  algo
# - integer to string ->  split string -> convert individual digits back to integers

def digit_list(input_integer)
  array_of_digits = input_integer.to_s.split('')  # => ["1", "2", "3", "4", "5"], ["7"], ["3", "7", "5", "2", "9", "0"], ["4", "4", "4"]
  array_of_digits.map { |digit| digit.to_i }      # => [1, 2, 3, 4, 5], [7], [3, 7, 5, 2, 9, 0], [4, 4, 4]
end                                               # => :digit_list

puts digit_list(12345) == [1, 2, 3, 4, 5]      # => nil
puts digit_list(7) == [7]                      # => nil
puts digit_list(375290) == [3, 7, 5, 2, 9, 0]  # => nil
puts digit_list(444) == [4, 4, 4]              # => nil

# >> true
# >> true
# >> true
# >> true
