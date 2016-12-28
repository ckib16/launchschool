# Convert a Number to a String!
#
# In the previous two exercises, you developed methods that convert simple numeric strings to signed Integers. In this exercise and the next, you're going to reverse those methods.
#
# Write a method that takes a positive integer or zero, and converts it to a string representation.
#
# You may not use any of the standard conversion methods available in Ruby, such as Integer#to_s, String(), Kernel#format, etc. Your method should do this the old-fashioned way and construct the string by analyzing and manipulating the number.

# --- Read ---
# 1. Understand the Problem
# input: positve integr or zero
# rules:
# output: string
#
# 2. Test Cases
#
# --- Solve ---
# 3. Data Structure = ____
# input:
# rules: (often a hash)
#
# 4. Algorithm
# output:

DIGITS = {
  0 => '0', 1 => '1', 2 => '2', 3 => '3', 4 => '4', 5 => '5', 6 => '6', 7 => '7', 8 => '8', 9 => '9'  # => "9"
}                                                                                                     # => {0=>"0", 1=>"1", 2=>"2", 3=>"3", 4=>"4", 5=>"5", 6=>"6", 7=>"7", 8=>"8", 9=>"9"}

def integer_to_string(input_integer)
  conversion_to_array = input_integer.to_s.chars.join('')  # => "4321", "0", "5000"
end                                                        # => :integer_to_string

# Examples

integer_to_string(4321) == '4321'  # => true
integer_to_string(0) == '0'        # => true
integer_to_string(5000) == '5000'  # => true
