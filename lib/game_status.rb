# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0, 1, 2], #Top row
  [3, 4, 5], #Middle row
  [6, 7, 8], #Bottom row
  [0, 3, 6], #First column
  [1, 4, 7], #Second column
  [2, 5, 8], #Third column
  [0, 4, 8], #Diagonal
  [2, 4, 6], #Diagonal
]

#Winner?
def won?(board)
  if board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
    return false
  else
    return true
  end
end

#Full Board?
def full?(board)
  if board.detect{|i| i = " "}
    return false
  else
    return true
  end
end

#Draw?
def draw?(board)
  if won?(board) == false && full?(board) == true
    return true
  else
    return false
  end
end
