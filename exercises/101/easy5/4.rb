# Letter Swap
#
# Given a string of words separated by spaces, write a method that takes this string of words and returns a string in which the first and last letters of every word is swapped.
#
# You may assume that every word contains at least one letter, and that the string will always contain at least one word. You may also assume that each string contains nothing but words and spaces

# --- Read ---
# 1. Understand the Problem
# input: string of words separated by spaces
# rules: every word contains at least one letter, and that the string will always contain at least one word. You may also assume that each string contains nothing but words and spaces
# output: returns a string in which the first and last letters of every word is swapped.
#
# 2. Test Cases
#
# --- Solve ---
# 3. Data Structure = Array
# input: string
# rules: (often a hash)
#
# 4. Algorithm
# output:

def swap(input_string)
  array_of_words = input_string.split.map do |word|  # => ["Oh", "what", "a", "wonderful", "day", "it", "is"], ["Abcde"], ["a"]
    word[0], word[-1] = word[-1], word[0]            # => ["h", "O"], ["t", "w"], ["a", "a"], ["l", "w"],  ["y", "d"], ["t", "i"], ["s", "i"], ["e", "A"], ["a", "a"]
    word                                             # => "hO",       "thaw",     "a",        "londerfuw", "yad",      "ti",       "si",       "ebcdA",    "a"
  end                                                # => ["hO", "thaw", "a", "londerfuw", "yad", "ti", "si"], ["ebcdA"], ["a"]
  array_of_words.join(' ')                           # => "hO thaw a londerfuw yad ti si",                     "ebcdA",   "a"
end                                                  # => :swap


# Examples:
#
swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'  # => true
swap('Abcde') == 'ebcdA'                                                  # => true
swap('a') == 'a'                                                          # => true
