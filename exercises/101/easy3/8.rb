# Palindromic Strings (Part 1)
#
# Write a method that returns true if the string passed as an argument is a palindrome, false otherwise. (A palindrome reads the same forwards and backwards.) Case matters, and all characters should be considered.
#
# Examples:
#
# palindrome?('madam') == true
# palindrome?('Madam') == false          # (case matters)
# palindrome?("madam i'm adam") == false # (all characters matter)
# palindrome?('356653') == true
#
# --- Read ---
# 1. Understand the Problem
# 	- input: string passed in
# 	- rules: if palindrome == true, else false
#     - case matters
# 	- output: boolean
#
# 2. Test Cases
#
# --- Solve ---
# 3. Data Structure
# 	- input: string
# 	- rules: (often a hash)
#     case sensitive, all characters
#
# 4. Algorithm
# 	- output:
# strin == string.reverse -> true
# else false

def palindrome?(input_string)
  if input_string == input_string.reverse  # => true, false, false, true
    true                                   # => true, true
  else
    false                                  # => false, false
  end                                      # => true, false, false, true
end                                        # => :palindrome?

palindrome?('madam')           # => true
palindrome?('Madam')           # => false
palindrome?("madam i'm adam")  # => false
palindrome?('356653')          # => true
