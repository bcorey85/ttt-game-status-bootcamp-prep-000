# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant

WIN_COMBINATIONS = [
  #horizontal
  [0, 1, 2],
  [3, 4, 5],
  [6, 7, 8],
  #vertical
  [0, 3, 6],
  [1, 4, 7],
  [2, 5, 8], 
  #diagonal
  [0, 4, 8],
  [2, 4, 6],  
]
<<<<<<< HEAD
def won?(board)
    WIN_COMBINATIONS.find do |combo|
    board[combo[0]] == board[combo[1]] &&
    board[combo[0]] == board[combo[2]] &&
    position_taken?(board, combo[0])
  end
end
=======

>>>>>>> 51346fb9ba1999efe56c28593b2c240b0eeb8d6b

def full?(board)
  board.all? do |check|
    check == "X" || check == "O"
  end
end

def draw?(board)
<<<<<<< HEAD
  !won?(board) && full?(board)
end

def over?(board)
  won?(board) || full?(board)
end

def winner(board)
  if !!won?(board) 
=======
  !won?(board) || full?(board)
end

def winner(board)
  if !!won?(board)
>>>>>>> 51346fb9ba1999efe56c28593b2c240b0eeb8d6b
    board[won?(board)[0]]
  end
end