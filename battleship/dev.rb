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
# using symbols cuz they faster

h_axis = ('a'..'j').to_a
v_axis = (1 .. 10).to_a
board = []

h_axis.each do |h|
    v_axis.each_with_index do |v|
        board << [h,v]
    end
end

puts board.join(" , ")

# suits.each do |suit|
#     ranks.each_with_index do |rank|
#     deck << [suit, rank]
#     deck.shuffle!
#     end
# end


binding.pry
puts "dunzo"