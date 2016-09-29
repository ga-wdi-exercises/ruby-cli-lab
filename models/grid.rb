class Grid

  @@all = []
  @@count = 0

  attr_accessor

  def initialize player
    @id = @@count + 1
    @player = player
    @squares = []
    create_squares
    @boats = []
    create_boats
    @@all << self
  end

  def create_squares

  end

  def create_boats

  end

  def self.all
    @@all
  end

end
