require_relative 'models/battleships'
require_relative 'models/game_board'
require_relative 'models/torpedo'

# CREATE BOARD
game_board = initialize_board(10, "(~)")

# Create Boats
boat_one = Battleship.new
boat_two = Battleship.new

p '-----'

#Place Boats
#  uncomment below for later for now we will use a diff starting pos
# starting_position = Random.new.rand(1..(5 * 5))
 
 add_piece_horz
 add_piece_vert
# --------------------
# Print Pretty Board
show_board($board)



# Start Game
# num = Random.new.rand(0..5)
# p num

#locate Position
# def find_start_position

#showboat
# p row_boat.show_boat
p '-----'

# p game_board



