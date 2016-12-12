# Write a method that takes one argument, a positive integer, and returns a string of alternating 1s and 0s, always starting with 1. The length of the string should match the given integer.
#
# Examples:
#
# puts stringy(6) == '101010'
# puts stringy(9) == '101010101'
# puts stringy(4) == '1010'
# puts stringy(7) == '1010101'
# The tests above should print true

# input - positive integer
# output - string: starts with "1"
# data structure - string or array?
# algo
# -> see if integer is odd or even
# -> even = integer / 2 = puts "10"
# -> odd = (integer - 1) / 2 = puts "10"+ "1"

def stringy(input_integer)
  chunks = []                 # => [], [], [], []
  (input_integer/2).times do  # => 3, 4, 2, 3
    chunks << '10'            # => ["10"], ["10", "10"], ["10", "10", "10"], ["10"], ["10", "10"], ["10", "10", "10"], ["10", "10", "10", "10"], ["10"], ["10", "10"], ["10"], ["10", "10"], ["10", "10", "10"]
  end                         # => 3, 4, 2, 3

  if input_integer.even?   # => true, false, true, false
    chunks.join('')        # => "101010", "1010"
  else
    chunks.join('') + '1'  # => "101010101", "1010101"
  end                      # => "101010", "101010101", "1010", "1010101"
end                        # => :stringy

puts stringy(6) == '101010'     # => nil
puts stringy(9) == '101010101'  # => nil
puts stringy(4) == '1010'       # => nil
puts stringy(7) == '1010101'    # => nil

# >> true
# >> true
# >> true
# >> true
