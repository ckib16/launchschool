# perform_again.rb

loop do
  puts "Do you want that again?"
  answer = gets.chomp
  if answer != 'Y'
    break
  end
end