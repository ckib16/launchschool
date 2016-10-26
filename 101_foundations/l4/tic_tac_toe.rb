# 1. Display a 3x3 board
# 2. Ask the user to mark a square
# 3. Computer marks a square
# 4. Display board with updated state
# 5. If winner, display winner
# 6. If board is full, display tie
# 7. If neither winner nor tie, go to #2
# 8. Play again?
# 9. If yes, got to #1
# 10. Else goodbye!

def display_board(brd)
  puts ""
  puts "     |     |     "
  puts "  #{brd[1]}  |  #{brd[2]}  |   #{brd[3]}  "
  puts "     |     |     "
  puts "-----|-----|-----"
  puts "     |     |     "
  puts "  #{brd[4]}  |  #{brd[5]}  |   #{brd[6]}  "
  puts "     |     |     "
  puts "-----|-----|-----"
  puts "     |     |     "
  puts "  #{brd[7]}  |  #{brd[8]}  |   #{brd[9]}  "
  puts "     |     |     "

end

def initialize_board
  new_board = {}
  (1..9).each { |num| new_board[num] = ' '}
  new_board
end

board = initialize_board
display_board(board)
# => nil

# >>
# >>      |     |
# >>   1  |  1  |   1
# >>      |     |
# >> -----|-----|-----
# >>      |     |
# >>   1  |  1  |   1
# >>      |     |
# >> -----|-----|-----
# >>      |     |
# >>   1  |  1  |   1
# >>      |     |
