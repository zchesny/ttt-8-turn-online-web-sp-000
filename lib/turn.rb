def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def turn()
# ask user for their move by position 1-9
  position = gets.strip.to_i
# receive the user input
# convert position to an index
# if the move is valid, make the move and display the board to the user
# if the move is invalid, ask for a new move until a valid move is received
end
