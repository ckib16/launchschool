# Write a method that takes one argument in the form of an integer or a float; this argument may be either positive or negative. This method should check if a number is odd, returning true if its absolute value is odd. You may assume that only integers are passed in as arguments.
#
# Examples:
#
# puts is_odd?(2)    # => false
# puts is_odd?(5)    # => true
# puts is_odd?(-17)  # => true
# puts is_odd?(-8)   # => false
# Keep in mind that you're not allowed to use #odd? or #even? in your solution.

#  input - integer, pos or neg
#  output - boolean

# Test cases - above

def is_odd?(input)
  input % 2 != 0    # => true
end                 # => :is_odd?

is_odd?(5)  # => true
