require 'pry'

SUITS = ["C", "D", "H", "S"]
VALUES = ['2', '3', '4', '5', '6', '7', '8', '9', '10', 'J', 'Q', 'K', 'A']

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
  elsif dealer_total >21
    :dealer_busted
  elsif dealer_total < player_total
    :player
  elsif player_total > dealer_total
    :dealer
  else
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
  answer.downcase.starts_with?('y')
end

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
end
