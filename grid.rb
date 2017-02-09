class Grid
  attr_accessor :coordinates, :keys, :hash
  def initialize
    @x = (0..9).to_a
    @y = (0..9).to_a
    @coordinates = @x.product(@y)
    @keys = @coordinates.map { |coord| "#{coord.join(',')}: #"}
    @hash = Hash[@keys.map { |i| i.split(": ") }]
  end

  def print_grid
    
  end
end
