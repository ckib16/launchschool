VALID_CHOICES = %w(rock paper scissors lizard spock)

def prompt(message)
  puts "=> #{message}"
end

def win?(first, second)
  (first == 'rock' && second.start_with?('sc', 'l')) ||
    (first == 'paper' && second.start_with?('r', 'sp')) ||
    (first == 'scissors' && second.start_with?('p', 'l')) ||
    (first == 'lizard' && second.start_with?('p', 'sp')) ||
    (first == 'spock' && second.start_with?('sc', 'r'))
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

prompt("Welome to Rock, Paper, Scissors, Lizard, Spock")

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
