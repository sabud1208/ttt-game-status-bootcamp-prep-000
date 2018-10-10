board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]

def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end


WIN_COMBINATIONS= [
  [0, 1, 2],
  [3, 4, 5],
  [6, 7, 8],
  [0, 3, 6],
  [1, 4, 7],
  [2, 5, 8],
  [0, 4, 8],
  [2, 4, 6]
]

def won?(board)
  WIN_COMBINATIONS.each do |play|
    if board[winner_set[0]] == board[winner_set[1]] &&
    board[winner_set[1]] == board[winner_set[2]] &&
    position_taken?(board, winner_set[0])
    puts "somebody won!"
    return true
    return winner_set
 end
end
end

puts won?(board)
