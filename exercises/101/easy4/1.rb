# Short Long Short
#
# Write a method that takes two strings as arguments, determines the longest of the two strings, and then returns the result of concatenating the shorter string, the longer string, and the shorter string once again. You may assume that the strings are of different lengths.
#
# Examples:
#
# short_long_short('abc', 'defgh') == "abcdefghabc"
# short_long_short('abcde', 'fgh') == "fghabcdefgh"
# short_long_short('', 'xyz') == "xyz"
#
# --- Read ---
# 1. Understand the Problem
# input: 2 strings
# rules: find the longer string and place at index 1
# put shorter string at index 0 & 2
# output: concatenate short + long + short
#
# 2. Test Cases
#
# --- Solve ---
# 3. Data Structure = string & array
# input: string
# rules: (often a hash)
#
# 4. Algorithm
# output: array
# string.count
# compare string lengths
# assign names to larger and smaller
# place larger at array[1]
# place smaller at array [0] & [2]

def short_long_short(input1, input2)
  input_array = [input1, input2]                                   # => ["abc", "defgh"],        ["abcde", "fgh"],        ["", "xyz"]
  sorted_array = input_array.sort { |a,b| a.length <=> b.length }  # => ["abc", "defgh"],        ["fgh", "abcde"],        ["", "xyz"]
  sorted_array << sorted_array[0]                                  # => ["abc", "defgh", "abc"], ["fgh", "abcde", "fgh"], ["", "xyz", ""]
  sorted_array.join("")                                            # => "abcdefghabc",           "fghabcdefgh",           "xyz"
end                                                                # => :short_long_short

short_long_short('abc', 'defgh') == "abcdefghabc"  # => true
short_long_short('abcde', 'fgh') == "fghabcdefgh"  # => true
short_long_short('', 'xyz') == "xyz"               # => true
