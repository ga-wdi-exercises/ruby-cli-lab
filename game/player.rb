class Player
  attr_reader :name
  def initialize(name)
    @name = name
    @ship = Ship.new
  end
end
