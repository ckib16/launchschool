# Write a method that takes two arguments, a positive integer and a boolean, and calculates the bonus for a given salary. If the boolean is true, the bonus should be half of the salary. If the boolean is false, the bonus should be 0.
#
# Examples:
#
# puts calculate_bonus(2800, true) == 1400
# puts calculate_bonus(1000, false) == 0
# puts calculate_bonus(50000, true) == 25000
# The tests above should print true.

# input - 1 positive integer & 1 boolean
# output - integer
# data structure - array?
# algo:
# -> potential bonus:
#   - integer / 2
# -> conditional if boolean true
#     - return add integer + bonus
#   - else
#     - return 0

def calculate_bonus(salary_integer, bonus_boolean)
  potential_bonus = salary_integer / 2              # => 1400, 500, 25000
  if bonus_boolean                                  # => true, false, true
    potential_bonus                                 # => 1400, 25000
  else
    0                                               # => 0
  end                                               # => 1400, 0, 25000
end                                                 # => :calculate_bonus

puts calculate_bonus(2800, true) == 1400    # => nil
puts calculate_bonus(1000, false) == 0      # => nil
puts calculate_bonus(50000, true) == 25000  # => nil

# >> true
# >> true
# >> true
