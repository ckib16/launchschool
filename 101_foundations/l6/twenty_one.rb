require 'pry'

SUITS = ["C", "D", "H", "S"]
VALUES = ['2', '3', '4', '5', '6', '7', '8', '9', '10', 'J', 'Q', 'K', 'A']
ROUNDS_TO_WIN = 5

def prompt(msg)
  puts "=> #{msg}"
end

def initialize_deck
  SUITS.product(VALUES).shuffle
end

def total(cards)
  values = cards.map { |card| card[1] }

  sum = 0
  values.each do |value|
    if value == 'A' # Ace
      sum += 11
    elsif value.to_i == 0 # K, Q, J
      sum += 10
    else
      sum += value.to_i # All other cards
    end
  end

  # Corect for Aces
  values.select { |value| value == 'A'}.count.times do
    sum -= 10 if sum > 21
  end

  sum
end

def busted?(cards)
  total(cards) > 21
end

# :tie, :dealer, :player, :dealer_busted, :player_busted
def detect_result(dealer_cards, player_cards)
  player_total = total(player_cards)
  dealer_total = total(dealer_cards)

  if player_total > 21
    :player_busted
  elsif dealer_total > 21
    :dealer_busted
  elsif dealer_total < player_total
    :player
  elsif player_total < dealer_total
    :dealer
  elsif player_total == dealer_total
    :tie
  end
end

def display_result(dealer_cards, player_cards)
  result = detect_result(dealer_cards, player_cards)

  case result
  when :player_busted
    prompt('You busted. You lose.')
  when :dealer_busted
    prompt('Dealer busted. You win!')
  when :player
    prompt('You win!')
  when :dealer
    prompt('You lose.')
  when :tie
    prompt("It's a tie")
  end
end

def play_again?
  puts '--------------------'
  prompt('Do you want to play again? (y or n)')
  answer = gets.chomp
  answer.downcase.start_with?('y')
end

# GAME LOOP START -------------------------

player_wins = 0
dealer_wins = 0

loop do
  prompt("Let's Play Twenty One")

  # initialize
  deck = initialize_deck
  player_cards = []
  dealer_cards = []

  # 1st deal
  2.times do
    player_cards << deck.pop
    dealer_cards << deck.pop
  end

  prompt("Dealer has #{dealer_cards[0]} and ?")
  prompt("")
  prompt("You have #{player_cards[0]} and #{player_cards[1]}...")
  prompt("...for a total of #{total(player_cards)}")

  # player turn
  loop do
    player_turn = nil
    loop do
      prompt "Would you like to hit or stay (h or s)?"
      player_turn = gets.chomp.downcase
      break if ['h', 's'].include?(player_turn)
      prompt "Sorry, must enter 'h' or 's'."
    end

    if player_turn == 'h'
      player_cards << deck.pop
      prompt "You chose to hit."
      prompt "Your cards are now: #{player_cards}"
      prompt "Your total is now: #{total(player_cards)}"
    end

    break if player_turn == 's' || busted?(player_cards)
  end

  if busted?(player_cards)
    dealer_wins += 1
    display_result(dealer_cards, player_cards)
    prompt "The current score is player:#{player_wins} and dealer:#{dealer_wins}"
    play_again? ? next : break
  else
    prompt "You stayed at #{total(player_cards)}"
  end

  # dealer turn
  prompt "Dealer's turn..."

  loop do
    break if busted?(dealer_cards) || total(dealer_cards) >=17

    prompt "Dealer hits."
    dealer_cards << deck.pop
    prompt "Dealer's cards are now: #{dealer_cards}"
  end

  dealer_total = total(dealer_cards)
  if busted?(dealer_cards)
    player_wins += 1
    prompt "Dealer's total is now #{dealer_total}"
    display_result(dealer_cards, player_cards)
    prompt "The current score is player:#{player_wins} and dealer:#{dealer_wins}"
    play_again? ? next : break
  else
    prompt "Dealer stays at #{dealer_total}"
  end

  # both player and dealer stays - compare cards
  case detect_result(dealer_cards, player_cards)
  when :player
    player_wins += 1
  when :dealer
    dealer_wins += 1
  end

  puts "========="
  prompt "Dealer has #{dealer_cards}, for a total of: #{dealer_total}"
  prompt "Player has #{player_cards}, for a total of: #{total(player_cards)}"
  prompt ""
  display_result(dealer_cards, player_cards)
  prompt ""
  prompt "The current score is player:#{player_wins} and dealer:#{dealer_wins}"
  puts "========="

  if player_wins == ROUNDS_TO_WIN
    prompt "You've won 5 rounds!"
    break
  elsif dealer_wins == ROUNDS_TO_WIN
    prompt "Dealer won 5 rounds!"
    break
  end

  break unless play_again?
end

prompt "Thanks for playing. Goodbye!"
