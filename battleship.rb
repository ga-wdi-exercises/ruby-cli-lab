require_relative "ship.rb"
require_relative "grid.rb"

puts "Battleship!"
puts ' '


ship_one = Ship.new
ship_one.build_ship
ship_two = Ship.new
ship_two.build_ship

grid = Grid.new
grid.print_grid
grid.add_ship_one ship_one
grid.add_ship_two ship_two

until (grid.ship_is_sunk? ship_one) && (grid.ship_is_sunk? ship_two) #until ship is sunk returns true for ship one
  puts ' ' # add a new line to make it easier to read
  puts "Take a guess - Format: y, x.
  Note: Y increases down, X increases left to right." #promt user for a guess

  guess = gets.chomp #chomp the guess

  if ship_one.is_hit? guess #check if the guess is a hit
    grid.add_hit guess #if it is, add an H in that position
    puts ' '
    puts "#{guess} is a hit!"
    puts ' '
  else
    grid.add_miss guess #if it's not, add an M
  end

  if ship_two.is_hit? guess #check if the guess is a hit
    grid.add_hit guess #if it is, add an H in that position
    puts ' '
    puts "#{guess} is a hit!"
    puts ' '
  else
    grid.add_miss guess #if it's not, add an M
  end

  grid.print_grid #reprint the grid

end

puts "Congratulations! You sunk both battleships!"

# puts ' '
# puts "Where would you like to place a torpedo? Letter-number format. Example: A10 or G5"
# guess = gets.chomp
