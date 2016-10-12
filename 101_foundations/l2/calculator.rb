# ask for 2 numbers
# ask for operation
# perform operation
# output result

puts "Welcome to calculator!"

puts "What's the 1st number?"
number1 = gets.chomp
puts "The 1st number is #{number1}!"

puts "What's the 2nd number?"
number2 = gets.chomp
puts "Your two numbers are #{number1} and #{number2}."

puts "What operation would you like? 1)Add 2)Subtract 3)Multiply 4)Divide"
operator = gets.chomp

if operator == '1'
  result = number1.to_i + number2.to_i
elsif operator == '2'
  result = number1.to_i - number2.to_i
elsif operator == '3'
  result = number1.to_i * number2.to_i
elsif operator == '4'
  result = number1.to_f / number2.to_f
end

puts "The result is #{result}."
