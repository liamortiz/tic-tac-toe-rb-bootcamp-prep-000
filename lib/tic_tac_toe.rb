# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [[0, 1, 2], # Top row
                    [3, 4, 5], # Bottom row
                    [6, 7, 8], # Last row
                    [0, 3, 6], # Left col
                    [1, 4, 7], # Middle col
                    [2, 5, 8], # Right
                    [0, 4, 8], # X1
                    [2, 4, 6]  # X2
                    ]

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(index)
  index.to_i - 1
end

def move(board, index, char)
  board[index] = char
end

def position_taken?(board, index)
  !(board[index] == " ")
end

def valid_move?(board, index)
  index.between?(0, 8) and !position_taken?(board, index)
end

def turn(board)
  puts "Please enter 1-9"
  user_input = input_to_index(gets.strip)
  if valid_move?(user_input)
    board[user_input] =
  end
  
end