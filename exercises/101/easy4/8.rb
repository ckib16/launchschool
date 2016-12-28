# Convert a String to a Signed Number!
#
# In the previous exercise, you developed a method that converts simple numeric strings to Integers. In this exercise, you're going to extend that method to work with signed numbers.
#
# Write a method that takes a String of digits, and returns the appropriate number as an integer. The String may have a leading + or - sign; if the first character is a +, your method should return a positive number; if it is a -, your method should return a negative number. If no sign is given, you should return a positive number.
#
# You may assume the string will always contain a valid number.
#
# You may not use any of the standard conversion methods available in Ruby, such as String#to_i, Integer(), etc. You may, however, use the string_to_integer method from the previous lesson.
#
# --- Read ---
# 1. Understand the Problem
# input: string of digits with leading + or -
# rules: always valid #
# output: integer with sign
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
  '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4, '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' =>9  # => 9
}                                                                                                    # => {"0"=>0, "1"=>1, "2"=>2, "3"=>3, "4"=>4, "5"=>5, "6"=>6, "7"=>7, "8"=>8, "9"=>9}

def string_to_integer(input_string)
  integer_conversion = input_string.chars.map { |char| DIGITS[char] }  # => [4, 3, 2, 1], [5, 7, 0], [1, 0, 0]

  value = 0                                                       # => 0,            0,         0
  integer_conversion.each { |digit| value = 10 * value + digit }  # => [4, 3, 2, 1], [5, 7, 0], [1, 0, 0]
  value                                                           # => 4321,         570,       100
end                                                               # => :string_to_integer

def string_to_signed_integer(string)
  case string[0]                                   # => "4", "-", "+"
  when '-' then -string_to_integer(string[1..-1])  # => -570
  when '+' then string_to_integer(string[1..-1])   # => 100
  else          string_to_integer(string)          # => 4321
  end                                              # => 4321, -570, 100
end                                                # => :string_to_signed_integer

# Examples

string_to_signed_integer('4321') == 4321  # => true
string_to_signed_integer('-570') == -570  # => true
string_to_signed_integer('+100') == 100   # => true
