require "pry"

require_relative "models/grid"
require_relative "models/square"
require_relative "models/boat"


def get_coordinate xy
  puts "Enter the number for the #{xy == "x" ? "column" : "row"}."
  input = gets.chomp.to_i
  until valid_coordinate?(input) do
    puts "You must enter a number between 1 and 10."
    input = gets.chomp.to_i
  end
  input
end

def valid_coordinate? input
  input >= 1 && input <= 10
end

def valid_orientation? input
  input == "h" || input "horizontal" || input == "v" || input == "vertical"
end

def get_coordinates
  coordinates = [0,0]
  coordinates[0] = get_coordinate "x"
  coordinates[1] = get_coordinate "y"
  coordinates
end

def valid_placement? xy, hv, boat_length
  valid, i = true, 0
  x_mult = hv == "h" || hv == "horizontal" ? 1 : 0
  y_mult = hv == "v" || hv == "vertical" ? 1 : 0
  while i < boat_length && valid == true
    valid = Square.get([xy[0] + (x_mult * i) ,xy[1] + (y_mult * i)])[0].isEmpty?
    i += 1
  end
  valid
end


grid = Grid.new "Barrett"
puts grid

binding.pry
puts "done"
