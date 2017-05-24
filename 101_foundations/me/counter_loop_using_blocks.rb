puts 'Start loop'

counter = 0
loop do
  counter += 1
  puts "Counter = #{counter}"
  break if counter == 10

  puts "Go again? (y/n)"
  input = gets.chomp.downcase
  break unless input.start_with?('y')
end

puts "All done!"
