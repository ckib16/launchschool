require "pry"

# get input
# check against wining conditions
# if ___ = you win / lose / tie

VALID_CHOICES = ["r", "p", "s"]

def win?(player_choice, computer_choice)
  player_choice == 'r' && computer_choice == 's' ||
  player_choice == 's' && computer_choice == 'p' ||
  player_choice == 'p' && computer_choice == 'r'
end

puts "Welcome top RPS"
puts "What is your choice? (r, p, s)"

player_choice = ''
loop do
  player_choice = gets.chomp
  if VALID_CHOICES.include?(player_choice)
    break
  else
    puts "Sorry - needs to be r/p/s"
  end
end

computer_choice = VALID_CHOICES.sample

puts "You chose #{player_choice}"
puts "Computer chose #{computer_choice}"

result = win?(player_choice, computer_choice)

if player_choice == computer_choice
  puts "Tie"
elsif result
  puts "You win"
else
  puts "Lose"
end
