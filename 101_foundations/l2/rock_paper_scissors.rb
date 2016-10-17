VALID_CHOICES = %w(rock paper scissors)

def prompt(message)
  puts "=> #{message}"
end

def win?(first, second)
  (first == 'rock' && second == 'scissors') ||
    (first == 'paper' && second == 'rock') ||
    (first == 'scissors' && second == 'paper')
end

def display_results(player, computer)
  if win?(player, computer)
    prompt("You win!")
  elsif win?(computer, player)
    prompt("You lose!")
  else
    prompt("It's a tie.")
  end
end

prompt("Welome to Rock, Paper, Scissor")

loop do
  player_choice = ''
  loop do
    prompt("Choose one: #{VALID_CHOICES.join(', ')}")
    player_choice = gets.chomp

    if VALID_CHOICES.include?(player_choice)
      break
    else
      prompt("That's not a valid choice.")
    end
  end

  computer_choice = VALID_CHOICES.sample

  prompt("You chose #{player_choice}. Computer chose #{computer_choice}.")

  display_results(player_choice, computer_choice)

  prompt("Want to play again? Press 'y' if Yes.")
  play_again = gets.chomp
  break unless play_again.downcase.start_with?('y')
end

prompt("Thanks for playing. Goodbye.")
