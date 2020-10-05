board = [
  [' ', 'x', ' '],
  [' ', ' ', ' '],
  [' ', ' ', 'o']
]

winner = nil

def print_board(rows)
  puts
  puts ' ' + rows[0][0] + ' | ' + rows[0][1] + ' | ' + rows[0][2]
  puts '-----------'
  puts ' ' + rows[1][0] + ' | ' + rows[1][1] + ' | ' + rows[1][2]
  puts '-----------'
  puts ' ' + rows[2][0] + ' | ' + rows[2][1] + ' | ' + rows[2][2]
  puts
end

def player_move
end

def check_for_winner
  true
end

until winner
  print_board(board)
  player_move
  winner = check_for_winner
  break if winner
end