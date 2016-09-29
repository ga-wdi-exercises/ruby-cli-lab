# As of 1:45 PM I have abandoned this Lab and will do Flash cards

# Pseudocode
# build the board
# vertical and horizontal axis
# use numbers for vertical and alphabet for horizontal
# I totally need to use an enumerable method to create my board

# create the battleships (What, why, where, when)
#   - they are initialized and randomly placed on the board. Part of the board class?
#   - take up 5 spaces on the board
#   - they can be placed horizontally or vertical
# battleships 
# create the player and what the player can do

require 'pry'
# a collection of tiles form a grid
# what does it know, what does it do?
class Tile
    def initialize
        # it knows it's point on the grid
        # it prints to the command line
        @tile = [@x, @y]
        @x = x_axis
        @y = y_axis
        # it know whether or not it is occupied
        @occupied = false # default
        # or true when a ship is around 
    end
end
    # ('a'..'j').to_a
    # (1 .. 10).to_a
    # h_axis.each do |h|
    #     v_axis.each_with_index do |v|
    #         board << [h,v]
    #     end
    # end

# this tile has a horizontal value and a vertical value
# it can be occupied by part of a battleship
# it sits side by side with other tiles in an Ocean or Board
# it has four sides

binding.pry
puts "dunzo"