require_relative "ship.rb"
require_relative "grid.rb"


puts "Battleship!"
puts "Sink 'em"
puts ' '

ship_one = Ship.new
ship_one.build_ship

grid = Grid.new
grid.print_grid
grid.add_ship_one ship_one.coordinates

until grid.ship_is_sunk? ship_one #until ship is sunk returns true for ship one
  puts ' ' # add a new line to make it easier to read
  puts "Take a guess - format: x, y" #promt user for a guess
  guess = gets.chomp #chomp the guess

  if ship_one.is_hit? guess #check if the guess is a hit
    grid.add_hit guess #if it is, add an H in that position
  else
    grid.add_miss guess #if it's not, add an M
  end

  grid.print_grid #reprint the grid
end



grid.ship_is_sunk? ship_one

# puts ' '
# puts "Where would you like to place a torpedo? Letter-number format. Example: A10 or G5"
# guess = gets.chomp
