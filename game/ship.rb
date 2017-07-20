class Ship

  attr_reader :length, :sunk, :orientation, :rowStart, :colStart, :rowEnd, :colEnd

  def initialize len
    @length = len
    @sunk = false
    @rowStart = 0
    @rowEnd = 0
    @colStart = 0
    @colEnd = 0
    @orientation = 0 #default
  end

  def init dir, row, col
    @orientation = dir
    @rowStart = row
    @colStart = col

    set_end
  end

  def set_end
    if @orientation == 0
      @rowEnd = @rowStart
      @colEnd = @colStart + @length
    elsif @orientation == 1
      @rowEnd = @rowStart + @length
      @colEnd = @colStart
    end
  end

  def shrink_ship
    @length -= 1
  end

  def hit_me? x, y
    if @orientation == 0
      if x != @rowStart || (y < @colStart && y > @colEnd)
        return false
      end
    elsif @orientation == 1
      if y != @colStart || ( x < @rowStart && x > @rowEnd)
        return false
      end
    end

    shrink_ship
    return true
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
