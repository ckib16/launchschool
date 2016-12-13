# Write a program that solicits 6 numbers from the user, then prints a message that describes whether or not the 6th number appears amongst the first 5 numbers.
#
# Examples:
#
# ==> Enter the 1st number:
# 25
# ==> Enter the 2nd number:
# 15
# ==> Enter the 3rd number:
# 20
# ==> Enter the 4th number:
# 17
# ==> Enter the 5th number:
# 23
# ==> Enter the last number:
# 17
# The number 17 appears in [25, 15, 20, 17, 23].
#
#
# ==> Enter the 1st number:
# 25
# ==> Enter the 2nd number:
# 15
# ==> Enter the 3rd number:
# 20
# ==> Enter the 4th number:
# 17
# ==> Enter the 5th number:
# 23
# ==> Enter the last number:
# 18
# The number 18 does not appear in [25, 15, 20, 17, 23].
#
# Input - string
# Output - string
# Data - array
# Algo:
# - loop for 5 times
#   - gets string
#   - array << string
# - gets 6th string
#   - if 6th number is included in array puts this else this

number_array = []

5.times do
  puts "Enter the XXX number:"
  input = gets.chomp
  number_array << input
end

puts "Enter the last number:"
final_input = gets.chomp

if number_array.include?(final_input)
  puts "The number #{final_input} appears in #{number_array}"
else
  puts "The number #{final_input} does NOT appear in #{number_array}"
end
