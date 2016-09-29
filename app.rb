require "pry"

require_relative "models/grid"
require_relative "models/square"
require_relative "models/boat"


def get_coordinate xy
  puts "Enter the number for the #{xy == "x" ? "column" : "row"}."
  input = gets.chomp.to_i
  until valid_coordinate(input) do
    puts "You must enter a number between 1 and 10."
    input = gets.chomp.to_i
  end
  input
end

def valid_coordinate input
  input >= 1 && input <= 10
end

def get_coordinates
  coordinates = [0,0]
  coordinates[0] = get_coordinate "x"
  coordinates[1] = get_coordinate "y"
  coordinates
end

grid = Grid.new "Barrett"
puts grid

binding.pry
puts "done"
