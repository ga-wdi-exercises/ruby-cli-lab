require_relative 'models/battleships'
require_relative 'models/game_board'
require_relative 'models/torpedo'

# CREATE BOARD
create_board = initialize_board(10, "(~)")

# Create Boats


add_piece_horz

boat_one = Battleship.new($horz_starting_cords)
# boat_one.cords << 
add_piece_vert
boat_two = Battleship.new($vert_starting_cords)


p '---------------------------------'

p "boat one starting cords: #{boat_one.cords}"

p "boat two starting cords: #{boat_two.cords}"

p '---------------------------------'
  
# --------------------
# Print Pretty Board
show_board($board)

p "--------------"




# Start Game




# p game_board



