class Ship

  attr_reader :length, :sunk

  def initialize len
    @length = len
    @sunk = false
  end

  def shrink_ship
    @length -= 1
  end

  def sunk?
    if @length < 1
      @sunk = true
      return true
    else
      return false
    end
  end

end
