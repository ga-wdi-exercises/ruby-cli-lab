require "pry"

require_relative "models/grid"
require_relative "models/square"
require_relative "models/boat"

grid = Grid.new "Barrett"
puts grid

binding.pry
puts "done"
