require "pry"

class Ship
  attr_reader :points, :direction, :starting_position, :used_cells

  def initialize
    @length = 5
    @direction = nil
    @starting_position = nil
    @points = []
    @@used_cells = []
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
      if @@used_cells.any? { |x| x == start}
        create_start
      else
        @starting_position = start
        @points << start
        create_points
      end
    else
      start = (1 + rand(6)) + (10 * (1 + rand(10)))
      if @@used_starts.any? { |x| x == start}
        create_start
      else
        @starting_position = start
        @points << start
        create_points
      end
    end
  end

  def create_points
    if @direction == 'Horizontal'
      4.times do |i|
        @points << @starting_position + (1 * (i + 1))
      end
    else
      4.times do |i|
        @points << @starting_position + (10 * (i + 1))
      end
    end
    @points.each{ |x| @@used_cells << x}
  end

end

ship_one = Ship.new
ship_one.create_ship
puts ship_one.direction
puts ship_one.points.join(',')
puts ship_one.points.length
puts Ship.used_cells

binding.pry
