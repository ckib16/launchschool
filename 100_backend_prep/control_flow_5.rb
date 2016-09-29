def evaluate_case(number)
  case
  when number > 100
    puts "Thats too high"
  when number >= 51
    puts "it's between 51 - 100"
  when number >=0
    puts "its betwen 0 - 50"
  else
    puts "it can't be a negative number"
  end
end

puts "Enter a number between 0 - 100"

input = gets.chomp.to_i

evaluate_case(input)