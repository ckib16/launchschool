#####

# iterations = 1

# loop do
#   puts "Number of iterations = #{iterations}"
#   iterations += 1
#   if iterations >5
#     break
#   end
# end

#####

# loop do
#   puts 'Should I stop looping?'
#   answer = gets.chomp.downcase
#   if answer.start_with?('y')
#     break
#   end
# end

#####

# say_hello = true
# counter = 0
#
# while say_hello
#   puts 'Hello!'
#   counter += 1
#   if counter == 5
#     say_hello = false
#   end
# end

#####

# numbers = (1..100).to_a
# counter = 0
#
# while counter < 5
#   counter += 1
#   puts numbers.sample
# end

###### alternate...

# numbers = []
#
# while numbers.size < 5
#   numbers << rand(100)
# end
#
# puts numbers

#####

# count = 1
#
# until count > 10
#   puts count
#   count += 1
# end

# numbers = [7, 9, 13, 25, 18]  # => [7, 9, 13, 25, 18]
#
# until numbers.empty?
#   puts numbers.shift
# end

#####

# for i in 1..100
#   # if i.odd?
#   if i % 2 != 0
#     puts i
#   end
# end

#####

friends = ['Sarah', 'John', 'Hannah', 'Dave']

for friend in friends
  puts "Hello, #{friend}!"
end
