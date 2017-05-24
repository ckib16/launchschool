VALID_CHOICES = ['rock', 'paper', 'scissors']

def display_prompt(message)
  puts "=> #{message}"
end

player_choice = ''

loop do
  loop do
    display_prompt("Choose one: #{VALID_CHOICES.join(', ')}")
    player_choice = gets.chomp

    if VALID_CHOICES.include?(player_choice)
      break
    else
      puts "That's not a valid choice"
    end
  end

  computer_choice = VALID_CHOICES.sample

  puts "You chose #{player_choice} and computer chose #{computer_choice}."

  if computer_choice == player_choice
    puts "TIE!"
  elsif (player_choice == 'rock' && computer_choice == 'scissors') ||
        (player_choice == 'paper' && computer_choice == 'rock') ||
        (player_choice == 'scissors' && computer_choice == 'paper')
    display_prompt("You win")
  else
    display_prompt("You lose")
  end

  display_prompt("Play again? (y/n)")
  play_again_choice = gets.chomp
  break unless play_again_choice.downcase.start_with?('y')
end

display_prompt('Thanks!')
