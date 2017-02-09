require_relative 'models/battleships'
require_relative 'models/game_board'
require_relative 'models/torpedo'

# CREATE BOARD
game_board = initialize_board(4, '(empty)')

# Create Boats
row_boat = Battleship.new(5)

#Place Boats

# Start Game

#locate Position
# def find_start_position

#showboat
p row_boat.show_boat

p Random.new.rand(0..(10 * 10))

p game_board


