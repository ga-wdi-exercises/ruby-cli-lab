require_relative 'models/battleships'
require_relative 'models/game_board'
require_relative 'models/torpedo'

# CREATE BOARD
game_board = initialize_board(10, "(~)")

# Create Boats
row_boat = Battleship.new(2)

p '-----'

#Place Boats
#  uncomment below for later for now we will use a diff starting pos
# starting_position = Random.new.rand(1..(5 * 5))
 starting_position = 4


 # def place_ship(num)
 # 	starting_position = 4

 	
 # end

 p game_board.length


# --------------------
# Print Pretty Board
 # p show_board(game_board)



# Start Game


#locate Position
# def find_start_position

#showboat
p row_boat.show_boat
p '-----'

p game_board



