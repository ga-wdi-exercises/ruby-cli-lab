
class Ship
  attr_reader :points, :direction, :starting_position, :used_cells
  @@used_cells = []

  #return all assigned cells
  def self.get_used_cells
    @@used_cells
  end

  def initialize
    @length = 5
    @direction = nil
    @starting_position = nil
    @points = []
  end

  #create ship method
  def create_ship
    choose_direction
  end

  #determine which direction the ship will go
  def choose_direction
    num = rand(1)
    if num == 0
      @direction = 'Vertical'
    else
      @direction = 'Horizontal'
    end
    create_start
  end

  #determine where the ship will start
  def create_start
    if @direction == 'Vertical'
      start = rand(59)
        @starting_position = start
        @points << start
        create_points
    else
      start = (rand(6)) + (10 * (1 + rand(10)))
        @starting_position = start
        @points << start
        create_points
    end
  end

  #create remaining coordinates for the ship
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
    #if any of the points have been used before, discard tehm and start over
    for i in @points
      if
      @@used_cells.find{|x| x == i}
      @points = []
      create_start
      return
      end
    end
    @points.each{ |x| @@used_cells << x}
  end

end
