require 'pry'

INITIAL_MARKER = ' '
PLAYER_MARKER = 'X'
COMPUTER_MARKER = 'O'

def prompt(msg)
 puts "  ===> #{msg}"
end

def display_board(brd)
  system 'clear'
  puts "     |     |    "
  puts "  #{brd[1]}  |  #{brd[2]}  |  #{brd[3]} "
  puts "     |     |    "
  puts "-----------------"
  puts "     |     |    "
  puts "  #{brd[4]}  |  #{brd[5]}  |  #{brd[6]} "
  puts "     |     |    "
  puts "-----------------"
  puts "     |     |    "
  puts "  #{brd[7]}  |  #{brd[8]}  |  #{brd[9]} "
  puts "     |     |    "
end

def initialize_board
  new_board = {}
  (1..9).each { |num| new_board[num] = ' ' }
  new_board
end

def empty_squares(brd)
  brd.keys.select { |num| brd[num] == ' ' }
end

def player_picks_square!(brd)
  player_choice = ''

  loop do
    prompt("Player's Turn - Pick a Square (#{empty_squares(brd).join(', ')}):")
    player_choice = gets.chomp.to_i
    break if empty_squares(brd).include?(player_choice)
    prompt "Sorry - not a valid choice"
  end

  brd[player_choice] = 'X'
end

def computer_picks_square!(brd)
  computer_options = empty_squares(brd)
  computer_choice = computer_options.sample
  brd[computer_choice] = COMPUTER_MARKER
end

def board_full?(brd)
  empty_squares(brd).empty?
end

def someone_one?(brd)
  !!detect_winner(brd)  # !! turns answer into a boolean
end

def detect_winner(brd)
  winning_patterns = [[1,2,3], [4,5,6], [7,8,9], [1,4,7], [2,5,8], [3,6,9], [1,5,9], [3,5,7]]
  winning_patterns.each do |pattern|
    if brd[pattern[0]] == PLAYER_MARKER &&
       brd[pattern[1]] == PLAYER_MARKER &&
       brd[pattern[2]] == PLAYER_MARKER
      #  increment_player_score!
       return 'Player'
    elsif brd[pattern[0]] == COMPUTER_MARKER &&
          brd[pattern[1]] == COMPUTER_MARKER &&
          brd[pattern[2]] == COMPUTER_MARKER
          return 'Computer'
    end
  end
  nil
end

def display_score(p_score, c_score)
  prompt "Score: Player = #{p_score} | Computer = #{c_score}"
end

def increment_score!(score)
 score += 1
end

prompt('Hi, Welcome to TicTac Toe v2')
player_score = 0
computer_score = 0

loop do
  board = initialize_board

  loop do
    display_board(board)

    player_picks_square!(board)
    break if board_full?(board) || someone_one?(board)

    computer_picks_square!(board)
    break if board_full?(board) || someone_one?(board)
  end

  display_board(board)

  if someone_one?(board)
    prompt("#{detect_winner(board)} won!")
  else
    prompt("It's a tie")
  end

  if detect_winner(board) == 'Player'
    player_score = increment_score!(player_score)
  elsif detect_winner(board) == 'Computer'
    computer_score = increment_score!(computer_score)
  end

  display_score(player_score, computer_score)

  break if player_score == 5 || computer_score == 5

  prompt("Do you want to play again? (y)")
  play_again = gets.chomp.to_s.downcase
  break unless play_again.start_with?('y')

end
prompt("Thanks for playing!")
prompt("Final Score:")
display_score(player_score, computer_score)
