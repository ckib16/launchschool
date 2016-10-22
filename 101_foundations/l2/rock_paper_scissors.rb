require 'pry'

VALID_CHOICES = %w(rock paper scissors lizard spock)
@total_wins = 0

def prompt(message)
  puts "=> #{message}"
end

def autocomplete_player_choice(choice)
  if choice.start_with?('r')
    'rock'
  elsif choice.start_with?('p')
    'paper'
  elsif choice.start_with?('sc')
    'scissors'
  elsif choice.start_with?('l')
    'lizard'
  elsif choice.start_with?('sp')
    'spock'
  end
end

def win?(first, second)
  (first == 'rock' && second.start_with?('sc', 'l')) ||
    (first == 'paper' && second.start_with?('r', 'sp')) ||
    (first == 'scissors' && second.start_with?('p', 'l')) ||
    (first == 'lizard' && second.start_with?('p', 'sp')) ||
    (first == 'spock' && second.start_with?('sc', 'r'))
end

def display_results(player, computer, wins)
  if win?(player, computer)
    prompt("You win!")
    @total_wins = wins + 1
    # binding.pry
  elsif win?(computer, player)
    prompt("You lose!")
    @total_wins = wins - 1
  else
    prompt("It's a tie.")
  end
end

prompt("Welome to Rock, Paper, Scissors, Lizard, Spock")

loop do
  player_choice = ''

  loop do
    prompt("Choose one: #{VALID_CHOICES.join(', ')}")
    prompt("You can just put the 1st two letters: Ex - 'sp' = Spock")
    player_choice = gets.downcase.chomp

    if player_choice.start_with?('r', 'p', 'sc', 'l', 'sp')
      player_choice = autocomplete_player_choice(player_choice)
      break
    else
      prompt("That's not a valid choice.")
    end
  end

  computer_choice = VALID_CHOICES.sample

  prompt("You chose #{player_choice}. Computer chose #{computer_choice}.")

  display_results(player_choice, computer_choice, @total_wins)
  prompt("Your total wins are #{@total_wins}")

  prompt("Want to play again? Press 'y' if Yes.")
  play_again = gets.chomp
  break unless play_again.downcase.start_with?('y')
end

prompt("Thanks for playing. Goodbye.")
