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
loop do
  puts ">> How many output lines do you want? Enter a number >= 3:"
  input = gets.chomp.to_i

  if input < 3
    puts "You need a bigger number."
  else
    input.times do
      puts "Launch School is the best!"
    end
    break
  end
end
