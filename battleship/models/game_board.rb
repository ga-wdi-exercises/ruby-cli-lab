require_relative 'battleships'


def initialize_board(n, space)
  $board = []
  n.times do |row_piece|
    row = []
    n.times {|col_piece| row << space }
    $board << row
  end
  $board

end

def add_piece_horz

  x = Random.new.rand(0..5)
  y = Random.new.rand(0..9)


  $board[x][y] = "(B)"
  $board[x+1][y] = "(B)"
  $board[x+2][y] = "(B)"
  $board[x+3][y] = "(B)"
  $board[x+4][y] = "(B)"
  $board
end

def add_piece_vert
  y = Random.new.rand(0..5)
  x = Random.new.rand(0..9)

  $board[x][y] = "(B)"
  $board[x][y+1] = "(B)"
  $board[x][y+2] = "(B)"
  $board[x][y+3] = "(B)"
  $board[x][y+4] = "(B)"
  $board
end

# add_piece_horz


def show_board(board)
  board.map! do |arr|
    arr.join + "\n"
  end
  board.each {|row| puts row}

end


# boardst = initialize_board(5, '(~)')
# show_board(boardst)
# def show_board(board)
# 	board.map! do |arr|
# 		arr.join + "\n"
# 	end
# 	board.each {|row| puts row}
# end


# board = initialize_board(6, "(~)")
# p '-----'

# board_arr << board
# puts board_arr
# puts board
