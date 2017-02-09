require 'pry'
require_relative 'classes'

# Menu.display

test_ocean = Ocean.new
test_ocean.new_ocean
test_ocean.place_ships
test_ocean.print_board 

binding.pry
