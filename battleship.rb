require_relative "ship.rb"
require_relative "grid.rb"


puts "Battleship!"
puts "Sink 'em"
puts ' '

ship_one = Ship.new
ship_one.build_ship

grid = Grid.new
grid.print_grid
grid.add_ship ship_one.coordinates_array
grid.print_grid

# puts ' '
# puts "Where would you like to place a torpedo? Letter-number format. Example: A10 or G5"
# guess = gets.chomp
