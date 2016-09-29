require_relative "square"
require_relative "boat"

class Grid

  @@all = []
  @@count = 0

  attr_accessor :id, :player, :squares, :boats

  def initialize player
    @@count += 1
    @id = @@count
    @player = player
    @squares = create_squares
    @boats = create_boats
    @@all << self
  end

  def draw_border
    "+" + ("---+" * 11)
  end

  def draw_row y
    output = ""
    r = Square.row y
    r.each do |s|
      # hardcoded show_boats to true
      output += s.draw true
    end
    output
  end

  def draw_board
    a = (0..10).to_a
    puts draw_border
    a.each do |yv|
      puts draw_row yv
      puts draw_border
    end
  end

  def create_squares
    x = (0..10).to_a
    squares = []
    x.each do |xv|
      x.each do |yv|
        squares << Square.new(xv,yv)
      end
    end
    squares
  end

  def create_boats
    boats = []
    lengths = [5,4,3,3,2]
    lengths.each do |i|
      boats << Boat.new(boats[i])
    end
    boats
  end

  def self.all
    @@all
  end

end
