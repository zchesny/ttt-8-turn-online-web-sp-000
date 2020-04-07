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
end

def get_user_input
  # ask user for their move by position 1-9
  puts "Please enter 1-9:"
  # receive the user input
  input = gets.strip
  # convert position to an index
  index = input_to_index(input)
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if valid_move?(board, index) == true
    move(board, index)
    display(board)
end
# def turn(board)
#   index = get_user_input
#   # If the move is invalid, ask for a new move until a valid move is received.
#   until valid_move?(board, index) == true
#     index = get_user_input()
#   end
#   # if the move is valid, make the move and display the board to the user
#   move(board, index)
#   display(board)
# end
