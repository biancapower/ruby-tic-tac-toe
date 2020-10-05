board = [
  ['1', 'x', '3'],
  ['o', '5', 'o'],
  ['7', '8', 'o']
]

winner = nil

def print_board(board)
  puts
  puts ' ' + board[0][0] + ' | ' + board[0][1] + ' | ' + board[0][2]
  puts '-----------'
  puts ' ' + board[1][0] + ' | ' + board[1][1] + ' | ' + board[1][2]
  puts '-----------'
  puts ' ' + board[2][0] + ' | ' + board[2][1] + ' | ' + board[2][2]
  puts
end

def player_move
end

def check_for_winner(board)
  # win within a row
  board[0].uniq.length == 1 ||
  board[1].uniq.length == 1 ||
  board[2].uniq.length == 1 ||

  # win within a column
  board[0][0] == board [1][0] && board[0][0] == board[2][0] ||
  board[0][1] == board [1][1] && board[0][1] == board[2][1] ||
  board[0][2] == board [1][2] && board[0][2] == board[2][2] ||

  # win on a diagonal
  board[0][0] == board [1][1] && board[0][0] == board[2][2] || 
  board[2][0] == board [1][1] && board[2][0] == board[0][2]
end

until winner
  print_board(board)
  player_move
  winner = check_for_winner(board)
  break if winner
end