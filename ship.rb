class Ship
  attr_accessor :positions

  def initialize positions
    @positions = positions
  end

  def is_hit? position
    @positions.include? position
  end
end
