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
    p "  0 1 2 3 4 5 6 7 8 9"
    row = 0
    @hash.values.each_slice(10) do |chunk|
      p row.to_s + " " + chunk.join(' ')
      row += 1
    end
  end

  def add_hit location
    #location format is "0, 9"
    
  end

  def add_miss location

  end

end
