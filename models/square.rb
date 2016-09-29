class Square

  @@all = []
  @@count = 0

  attr_reader :x, :y

  def initialize x,y
    @id = @@count + 1
    @x = x
    @y = y
    @label =
    @boat_id = nil
    @boat_index = nil
    @guessed = false
  end

  def self.all
    @@all
  end

  def self.row y
    @@all.select { |sq| sq.y = y }
  end

  def self.column x
    @@all.select { |sq| sq.x = x }
  end

end
