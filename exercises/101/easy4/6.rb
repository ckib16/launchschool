# Running Totals
#
# Write a method that takes an Array of numbers, and returns an Array with the same number of elements, and each element has the running total from the original Array.
#
# --- Read ---
# 1. Understand the Problem
# input: array of numbers
# rules: calc runing total
# output: array with same # of elements, each element is running total from input array
#
# 2. Test Cases
#
# --- Solve ---
# 3. Data Structure = array
# input: array of integers
# rules: calc running total
#
# 4. Algorithm
# output:

def running_total(input_array)
  sum = 0                                 # => 0,          0,                   0,   0
  new_array = input_array.map do |value|  # => [2, 5, 13], [14, 11, 7, 15, 20], [3], []
    sum += value                          # => 2, 7, 20, 14, 25, 32, 47, 67, 3
  end                                     # => [2, 7, 20], [14, 25, 32, 47, 67], [3], []
end                                       # => :running_total


# Examples:

running_total([2, 5, 13]) == [2, 7, 20]                     # => true
running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]  # => true
running_total([3]) == [3]                                   # => true
running_total([]) == []                                     # => true
