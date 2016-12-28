# Write a method that searches for all multiples of 3 or 5 that lie between 1 and some other number, and then computes the sum of those multiples. For instance, if the supplied number is 20, the result should be 98 (3 + 5 + 6 + 9 + 10 + 12 + 15 + 18 + 20).
#
# You may assume that the number passed in is an integer greater than 1.
#
# --- Read ---
# 1. Understand the Problem
# input: interger > 1
# rules: find mutiples of 3 & 5
# output: sum of the multiples
#
# 2. Test Cases
#
# --- Solve ---
# 3. Data Structure = array
# input: integer
# rules:
#
# 4. Algorithm
# output:

def multisum(input_integer)
  full_array = (1..input_integer).to_a
  multiples = full_array.select { |x| x % 3 == 0 || x % 5 == 0 }
  sum = multiples.reduce(:+)
end

# Examples
#
multisum(3) == 3 # => true
multisum(5) == 8 # => true
multisum(10) == 33 # => true
multisum(1000) == 234168 # => true
