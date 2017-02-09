require "pry"
require "matrix"
# with column in position 0 for guesses
  # board = [1,'#','#','#',"#","#",'#','#','#',"#","#"]
  # # rows = [1,' ',2,' ',3,' ',4,' ',5,' ',6,' ',7,' ',8,' ',9,' ',10]
  # # columns = ['A','B','C','D','F','G','H','I','J']
  # field = board.map{|e| board}
  # field.partition{|i| i.to_s.to_i ==i }

# class Grid
#   attr_accessor :x_id, :y_id
#
#   def initialize(x,y)
#
#
#   end
#
# end
#Global board for testing purposes
rows, cols = 10,10
grid = Array.new(rows) { Array.new(cols) }

def board_w_ship
  rows, cols = 10,10
  grid = Array.new(rows) { Array.new(cols) }
  battleship = grid[0][4]='#'
  battleship = grid[0][5]='#'
  battleship = grid[0][6]='#'
  battleship = grid[0][7]='#'
  battleship = grid[0][8]='#'
  return grid
end

# board = board_w_ship

def check_coordinates board
  puts "Please select an X coordinate"
  input_x = gets.chomp
  puts "Please select an Y coordinate"
  input_y= gets.chomp

  if(board[input_x.to_i][input_y.to_i] == nil)
    puts "You missed"
  else
    puts "You hit!"
  end
end

def random_placement(grid)
  x_coord = rand(0..10)
  y_coord = rand(0..10)
  5.times do
    grid[x_coord][y_coord] = "$"
    y_coord +=1
  end
  return grid
end

new_board = random_placement(grid)

binding.pry
