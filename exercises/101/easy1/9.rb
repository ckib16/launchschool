# Write a method that takes one argument, a positive integer, and returns the sum of its digits.
#
# Examples:
#
# puts sum(23) == 5
# puts sum(496) == 19
# puts sum(123_456_789) == 45
# The tests above should print true.
#
# For a challenge, try writing this without any basic looping constructs (while, until, loop, and each).

# input - positive integer
# output - integer
# data structure - array
# algo:
# -> convert to string
# -> split into array of chars (digits)
# -> convert to nums
# -> sum array of nums

def sum(input_integer)
  digits = input_integer.to_s.chars
  sum_array = digits.map { |digit| digit.to_i }.reduce(:+)
end

puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45
