puts "Enter a number between 0 - 100"

input = gets.chomp.to_i

if input > 100
  puts "Thats too high"
elsif input >= 51
  puts "it's between 51 - 100"
elsif input >=0
  puts "its betwen 0 - 50"
else
  puts "it can't be a negative number"
end