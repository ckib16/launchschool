# Palindromic Numbers
#
# Write a method that returns true if its integer argument is palindromic, false otherwise. A palindromic number reads the same forwards and backwards.
#
# Examples:
#
# palindromic_number?(34543) == true
# palindromic_number?(123210) == false
# palindromic_number?(22) == true
# palindromic_number?(5) == true
#
# --- Read ---
# 1. Understand the Problem
# 	- input: integer
# 	- rules: should be palindrome
# 	- output: boolean
#
# 2. Test Cases
#
# --- Solve ---
# 3. Data Structure
# 	- input: integer or string
# 	- rules: (often a hash)
#
# 4. Algorithm
# 	- output: input.to_s
#   reverse

def palindromic_number?(input_integer)
  converted_input_to_string = input_integer.to_s                  # => "34543", "123210", "22", "5"
  converted_input_to_string == converted_input_to_string.reverse  # => true,    false,    true, true
end                                                               # => :palindromic_number?

palindromic_number?(34543)   # => true
palindromic_number?(123210)  # => true
palindromic_number?(22)      # => true
palindromic_number?(5)        # => true
