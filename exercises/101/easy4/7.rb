# Convert a String to a Number!
#
# The String#to_i method converts a string of numeric characters (including an optional plus or minus sign) to an Integer. String#to_int and Integer behave similarly. In this exercise, you are going to create your own conversion method.
#
# Write a method that takes a String of digits, and returns the appropriate number as an integer. You may not use any of the methods mentioned above.
#
# For now, do not worry about leading + or - signs, nor should you worry about invalid characters; assume all characters will be numeric.
#
# You may not use any of the standard conversion methods available in Ruby, such as String#to_i, Integer(), etc. Your method should do this the old-fashioned way and calculate the result by analyzing the characters in the string.

# --- Read ---
# 1. Understand the Problem
# input:
# rules:
# output:
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
  '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4, '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' =>9
}

def string_to_integer(input_string)
  integer_conversion = input_string.chars.map { |char| DIGITS[char] }

  value = 0
  integer_conversion.each { |digit| value = 10 * value + digit }
  value
end


# Examples

string_to_integer('4321') == 4321
string_to_integer('570') == 570
