# Input
# Output
# Happy Path

# Create a method that takes two integers as arguments.
# The first argument is a count, and the second is the first number of a
# sequence that your method will create. The method should return an Array
# that contains the same number of elements as the count argument, while
# the values of each element will be multiples of the starting number.

# You may assume that the count argument will always have a value of 0 or greater, while the starting number can be any integer value. If the count is 0, an empty list should be returned.

# Test Cases

# sequence(5, 1) == [1, 2, 3, 4, 5]
# sequence(4, -7) == [-7, -14, -21, -28]
# sequence(3, 0) == [0, 0, 0]
# sequence(0, 1000000) == []
#
# count = nil
# interval = nil
# interval = count += count

# 1st is the 'count' or number of items in the returned array
# 2nd is the 'interval' between each array

# def sequence(count, interval)
#   count_array = count.to_a
#   # iterate over the 'count' and add in the interval
#   count_array.each do |count|
#     count = count + interval
#   end
#   # return the array
# end
#
# sequence(5,1)


#####

# After a hard quarter in the office you decide to get some rest on a vacation. So you will book a flight for you and your girlfriend and try to leave all the mess behind you.

# You will need a rental car in order for you to get around in your vacation. The manager of the car rental makes you some good offers.

# Every day you rent the car costs $40. If you rent the car for 7 or more days, you get $50 off your total. Alternatively, if you rent the car for 3 or more days, you get $20 off your total.

# Write a code that gives out the total amount for different days(d).

# Test Cases

# rental_car_cost(1) # => 40
# rental_car_cost(2) # => 80
# rental_car_cost(4) # => 140
# rental_car_cost(7) # => 230

# inputs: rental_car, days, cost
# outputs: total different days (unique)
# path
# unique multiples of cost

COST = 40

def rental_car_cost(days)
  different_days = []
  while days > 0
    different_days << days * COST
    days -= 1
  end
  puts different_days.uniq
end

rental_car_cost(3)
