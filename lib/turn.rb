def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# code your #valid_move? method here
def valid_move?(board, index)
  # is index present in game board
  if index.between?(0, 8) == false
    return false
  end
  # is index not already filled with a token
  if position_taken?(board, index) == true
    return false
  else
    return true
  end
end

def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || board[index] = nil
    return false
  else
    return true
  end
end

# code your input_to_index and move method here!
def input_to_index(input)
  input.to_i - 1
end

def update_array_at_with(array, index, value)
  array[index] = value
end

def move(board, index, char="X")
  update_array_at_with(board, index, char)
  display_board(board)
end

def turn()
  # ask user for their move by position 1-9
  puts "Please enter 1-9:"
  # receive the user input
  position = gets.strip.to_i
  # convert position to an index
  # if the move is valid, make the move and display the board to the user
  # if the move is invalid, ask for a new move until a valid move is received
end
