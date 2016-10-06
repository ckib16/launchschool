# loops_ex_2.rb
#

puts "Enter a positive integer"
input = gets.chomp.to_i

while input >= 0
  puts input
  puts "Want to see that again?"
  reply = gets.chomp
  if reply != "STOP"
    input -= 1
  end
end

puts 'Ok I Stopped.'
