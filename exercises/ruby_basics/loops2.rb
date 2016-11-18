# count = 1
#
# loop do
#   while count < 6
#     if count.odd?
#       puts "#{count} is odd!"
#     else
#       puts "#{count} is even!"
#     end
#
#     count += 1
#   end
#   break
# end

#####

# loop do
#   number = rand(100)
#   puts number
#
#   if number.between?(1, 10)
#     break
#   end
# end

#####

# process_the_loop = [true, false].sample
#
# if process_the_loop
#   loop do
#     puts "The loop was processed!"
#     break
#   end
# else
#   puts "The loop was NOT processed!"
# end

#####
#
# loop do
#   puts 'What does 2 + 2 equal?'
#   answer = gets.chomp.to_i
#
#   if answer == 4
#     puts "Correct answer"
#     break
#   else
#     puts "Guess again..."
#   end
# end

#####

# numbers = []
#
# loop do
#   if numbers.size < 5
#     puts 'Enter any number:'
#     input = gets.chomp.to_i
#     numbers << input
#   else
#     break
#   end
# end
# puts numbers

#####

# names = ['Sally', 'Joe', 'Lisa', 'Henry']
#
# loop do
#   # puts names.pop #reverse order
#   puts names.shift
#   break if names.empty?
# end

#####

# 5.times do |index|
#   if index < 3
#     puts "Index is #{index}"
#   end
# end

#####

# number = 0
#
# until number == 10
#   number += 1
#   if number.even?
#     puts number
#   else
#     next
#   end
# end

#####

# number_a = 0
# number_b = 0
#
# loop do
#   number_a += rand(2)
#   number_b += rand(2)
#
#   puts "a is #{number_a}"
#   puts "b is #{number_b}"
#   if number_a == 5 || number_b == 5
#     puts "5 was reached"
#     break
#   else
#     next
#   end
# end

#####

def greeting
  puts 'Hello!'
end

number_of_greetings = 2

while number_of_greetings > 0
  greeting
  number_of_greetings -= 1
end
