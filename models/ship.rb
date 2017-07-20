# require "pry"
# require_relative "models/ship"
# require_relative "models/gameboard"
# require_relative "player"
# require_relative "app"

class Ship
  attr_reader :points, :direction, :starting_position, :used_cells
  @@used_cells = []

  def self.get_used_cells
    @@used_cells
  end

  def initialize
    @length = 5
    @direction = nil
    @starting_position = nil
    @points = []
  end

  def create_ship
    choose_direction
  end

  def choose_direction
    num = rand(1)
    if num == 0
      @direction = 'Vertical'
    else
      @direction = 'Horizontal'
    end
    create_start
  end

  def create_start
    if @direction == 'Vertical'
      start = rand(59)
      # if @@used_cells.any? { |x| x == start}
      #   create_start
      #   return
      # else
        @starting_position = start
        @points << start
      #   @@used_cells << start
        create_points
      # end
    else
      start = (rand(6)) + (10 * (1 + rand(10)))
      # if @@used_cells.any? { |x| x == start}
      #   create_start
      # else
        @starting_position = start
        @points << start
        create_points
      # end
    end
  end

  def create_points
    # temp_points = []
    if @direction == 'Horizontal'
      4.times do |i|
        @points << @starting_position + (1 * (i + 1))
      end
    else
      4.times do |i|
        @points << @starting_position + (10 * (i + 1))
      end
    end
    for i in @points
      if
      @@used_cells.find{|x| x == i}
      @points = []
      create_start
      return
      end
    end
    # if @points.each{ |y| @@used_cells.any{|x| x == y}}
    @points.each{ |x| @@used_cells << x}
  end

end

# ship_one = Ship.new
# ship_one.create_ship
# puts ship_one.direction
# puts ship_one.points.join(',')
# puts ship_one.points.length
# puts Ship.get_used_cells
# puts "Creating Ship 2"
# ship_one = Ship.new
# ship_one.create_ship
# puts ship_one.direction
# puts ship_one.points.join(',')
# puts ship_one.points.length
# puts Ship.get_used_cells

# binding.pry
