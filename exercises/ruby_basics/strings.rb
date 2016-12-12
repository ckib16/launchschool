# str = String.new("Test")
# puts str

#####
# puts "It's now 12 o'clock."

#####
# name = 'Roger'
#
# puts name.casecmp('RoGeR') == 0
# puts name.casecmp('DAVE') == 0

####
# name = 'Elizabeth'
#
# puts "Hello, #{name}!"

#####
# first_name = 'John'
# last_name = 'Doe'
#
# full_name = first_name + ' ' + last_name
# puts full_name

#####
# state = 'tExAs'
# puts state.capitalize!

#####
# greeting = 'Hello!'
#
# greeting.gsub!('Hello', 'Goodbye')
# puts greeting

#####
# alphabet = 'abcdefghijklmnopqrstuvwxyz'
#
# alphabet.split('').each { |letter| puts letter }

#####
# words = 'car human elephant airplane'
#
# words.split(' ').each do |word|
#   puts word + 's'
# end

#####
colors = 'blue pink yellow orange'

puts colors.include?('yellow')
puts colors.include?('purple')

colors = 'blue boredom yellow'
puts colors.include?('red')
