# Write a method that takes one argument, an array containing integers, and returns the average of all numbers in the array. The array will never be empty and the numbers will always be positive integers.
#
# Examples:
#
# puts average([1, 5, 87, 45, 8, 8]) == 25
# puts average([9, 47, 23, 95, 16, 52]) == 40
# The tests above should print true.

# input - array of positive integers
# output - integer
# data structure - array
# algo:
# -> sum all integers in array
# -> divide by array.size
# -> return result as integer

def average(input_array)
  sum = input_array.reduce(:+)      # => 154, 242
  average = sum/(input_array.size)  # => 25, 40
end                                 # => :average

puts average([1, 5, 87, 45, 8, 8]) == 25     # => nil
puts average([9, 47, 23, 95, 16, 52]) == 40  # => nil

# >> true
# >> true
