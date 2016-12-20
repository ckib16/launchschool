# Palindromic Strings (Part 2)
#
# Write another method that returns true if the string passed as an argument is a palindrome, false otherwise. This time, however, your method should be case-insensitive, and it should ignore all non-alphanumeric characters. If you wish, you may simplify things by calling the palindrome? method you wrote in the previous exercise.
#
# Examples:
#
# real_palindrome?('madam') == true
# real_palindrome?('Madam') == true           # (case does not matter)
# real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
# real_palindrome?('356653') == true
# real_palindrome?('356a653') == true
# real_palindrome?('123ab321') == false
#
# --- Read ---
# 1. Understand the Problem
# 	- input: string passed in
# 	- rules: if palindrome == true, else false
# 	- output: boolean
#
# 2. Test Cases
#
# --- Solve ---
# 3. Data Structure
# 	- input: string
# 	- rules: (often a hash)
#     case insensitive, ignore non-alphanumeric characters
#
# 4. Algorithm
# 	- output:
# strin == string.reverse -> true
# else false

def real_palindrome?(input_string)
  stripped_string = input_string.downcase.delete('^a-z0-9')
  if stripped_string == stripped_string.reverse
    true
  else
    false
  end
end

real_palindrome?('madam')            # => true
real_palindrome?('Madam')            # => true
real_palindrome?("Madam, I'm Adam")  # => true
real_palindrome?('356653')           # => true
real_palindrome?('356a653')          # => true
real_palindrome?('123ab321')         # => false
