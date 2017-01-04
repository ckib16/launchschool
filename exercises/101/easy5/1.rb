# ASCII String Value
#
# Write a method that determines and returns the ASCII string value of a string that is passed in as an argument. The ASCII string value is the sum of the ASCII values of every character in the string. (You may use String#ord to determine the ASCII value of a character.)
#
#
# --- Read ---
# 1. Understand the Problem
# input: string
# rules:
# output: integer
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


def ascii_value(input_string)
  sum = 0                                     # => 0,                                                  0,                                                                   0,     0
  input_chars = input_string.split('')        # => ["F", "o", "u", "r", " ", "s", "c", "o", "r", "e"], ["L", "a", "u", "n", "c", "h", " ", "S", "c", "h", "o", "o", "l"],   ["a"], []
  input_chars.map { |char| sum += char.ord }  # => [70, 181, 298, 412, 444, 559, 658, 769, 883, 984],  [76, 173, 290, 400, 499, 603, 635, 718, 817, 921, 1032, 1143, 1251], [97],  []
  # ord_values.reduce(:+)                             # => 984,                                                1251,                                                              97,    nil
  sum                                         # => 984, 1251, 97, 0
end                                           # => :ascii_value

ascii_value('Four score') == 984      # => true
ascii_value('Launch School') == 1251  # => true
ascii_value('a') == 97                # => true
ascii_value('') == 0                  # => true
