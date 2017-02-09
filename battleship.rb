require_relative "ship.rb"
require_relative "grid.rb"


puts "Battleship!"
puts "Sink 'em"
puts ' '

ship_one = Ship.new(["A1", "A2", "A3", "A4", "A5"])
ship_two = Ship.new(["J10", "I10", "H10", "G10", "F10"])
grid = Grid.new
p grid.keys
p grid.hash

# def display_grid
#   line = [' # ', ' # ', ' # ', ' # ', ' # ', ' # ', ' # ', ' # ', ' # ', ' # ']
#   letters = ['A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J']
#   puts '   1  2  3  4  5  6  7  8  9  10'
#   letters.each do |letter|
#     puts "#{letter} #{line.join('')}"
#   end
# end
#
# def update_grid ship_one, ship_two, guess
#   if ship_one.is_hit? guess
#     puts guess
#   end
# end
#
# display_grid
#
# p grid.coordinates

# puts ' '
# puts "Where would you like to place a torpedo? Letter-number format. Example: A10 or G5"
# guess = gets.chomp
# # update_grid ship_one, ship_two, guess
