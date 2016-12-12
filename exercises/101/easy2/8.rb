# Sum or Product of Consecutive Integers
#
# Write a program that asks the user to enter an integer greater than 0, then asks if the user wants to determine the sum or product of all numbers between 1 and the entered integer.
#
# Examples:
#
# >> Please enter an integer greater than 0:
# 5
# >> Enter 's' to compute the sum, 'p' to compute the product.
# s
# The sum of the integers between 1 and 5 is 15.
#
#
# >> Please enter an integer greater than 0:
# 6
# >> Enter 's' to compute the sum, 'p' to compute the product.
# p
# The product of the integers between 1 and 6 is 720.

# Input - integer (positive)
# Output - either sum or product of numbers between 1..input
# Data - integer
# Algo:
# -> get input and turn to integer
# -> ask if want product or sum (decision)
# -> if decision == p
#   1..input.to_a.each |num|
#     inject???product
#     puts output
#   elsif decision == s
#     inject sum
#     puts output
#   end

def print_sum_or_product
  puts "Please enter an integer greater than 0"
  input_integer = gets.chomp.to_i

  puts "Enter 's' to compute the sum, 'p' to compute the product."
  input_decision = gets.chomp.downcase

  if input_decision == 'p'
    product = (1..input_integer).inject(:*)
    puts "The product of the integers between 1 and #{input_integer} is #{product}."
  elsif input_decision == 's'
    sum = (1..input_integer).inject(:+)
        puts "The sum of the integers between 1 and #{input_integer} is #{sum}."
  else
    puts "please enter 'p' or 's'"
  end
end

print_sum_or_product
