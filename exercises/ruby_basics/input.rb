require 'pry'

# puts ">> Type anything you want."
# input = gets.chomp
#
# puts input

#####

# puts ">> What is your age?"
# input = gets.chomp.to_i
#
# puts "You are #{input*12} months old."

#####

# loop do
#   puts "Do you want me to print something? (y/n)"
#   input = gets.chomp.downcase
#
#   if input.start_with?('y')
#     puts 'something'
#     break
#   elsif input.start_with?('n')
#     break
#   else
#     puts "Invalid input. Please use 'y' or 'n'."
#   end
# end

#####
# loop do
#   puts ">> How many output lines do you want? Enter a number >= 3:"
#   input = gets.chomp.to_i
#
#   if input < 3
#     puts "You need a bigger number."
#   else
#     input.times do
#       puts "Launch School is the best!"
#     end
#     break
#   end
# end

#####
#
# USERNAME = "Chris"
# PASSWORD = "test"
#
# loop do
#   puts "Please enter your user name:"
#   input_user_name = gets.chomp
#
#   puts "Please enter your password:"
#   input_password = gets.chomp
#
#   if input_user_name == USERNAME && input_password == PASSWORD
#     puts "Welcome!"
#     break
#   else
#     puts "Authorization Failed."
#   end
# end

#####

# def valid_number?(number_string)
#   number_string.to_i.to_s == number_string
# end
#
# input_numerator = nil
# loop do
#   puts ">> Please enter numerator:"
#   input_numerator = gets.chomp
#
#   break if valid_number?(input_numerator)
#
#   puts "Invalid input. Only integers are allowed."
# end
#
# input_denominator = nil
# loop do
#   puts ">> Please enter denominator:"
#   input_denominator = gets.chomp
#
#   break if valid_number?(input_denominator)
#
#   puts "Invalid input. Only integers are allowed."
# end
#
# answer = (input_numerator.to_i / input_denominator.to_i)
# puts "#{input_numerator} / #{input_denominator} is #{answer}"

#####

# loop do
#   puts ">> How many output lines do you want? Enter a number >= 3 (Q to quit):"
#   input = gets.chomp.downcase
#   integer_input = input.to_i
#
#   break if input.start_with?('q')
#
#   if integer_input < 3
#     puts "You need a bigger number."
#   else
#     integer_input.times do
#       puts "Launch School is the best!"
#     end
#     break
#   end
# end

#####

def valid_number?(number_string)
  number_string.to_i.to_s == number_string && number_string.to_i != 0
end

def set_integer
  loop do
    puts ">> Please enter a positive or negative integer."
    integer = gets.chomp
    return integer.to_i if valid_number?(integer)

    puts ">> Invalid input. Only non-zero integers are allowed."
  end

end

integer_a = nil
integer_b = nil

loop do
  integer_a = set_integer
  integer_b = set_integer

  break if (integer_a * integer_b) < 0
  puts ">> Sorry, one must be positive (+) and one must be negatice (-)"
  puts "Please try again"
end


answer = (integer_a + integer_b)
puts "#{integer_a} + #{integer_b} = #{answer}"
