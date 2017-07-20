class Ship

  attr_reader :length, :sunk, :orientation, :rowStart, :colStart, :rowEnd, :colEnd

  ################################################
  # initialize
  #
  # initializes a ship and various instance variables
  #
  # len - the length of the ship
  ###############################################
  def initialize len
    @length = len
    @sunk = false
    @rowStart = 0
    @rowEnd = 0
    @colStart = 0
    @colEnd = 0
    @orientation = 0 #default
  end

  ################################################
  # init
  #
  # sets i. variables that let the ship know
  # where it is located
  #
  # dir - the orientation
  # row - the starting row position
  # col - the starting col position
  ###############################################
  def init dir, row, col
    @orientation = dir
    @rowStart = row
    @colStart = col

    set_end
  end

  ################################################
  # set_end
  #
  # sets row/column ends based up the length
  # starting position, and orientation
  ###############################################
  def set_end
    if @orientation == 0
      @rowEnd = @rowStart
      @colEnd = @colStart + @length
    elsif @orientation == 1
      @rowEnd = @rowStart + @length
      @colEnd = @colStart
    end
  end

  ################################################
  # shrink_ship
  #
  # shrink_ship by decreasing it's length by 1
  ###############################################
  def shrink_ship
    @length -= 1
  end

  ################################################
  # hit_me?
  #
  # checks to see if the user's x,y position choice
  # matches the location of the ship, and if
  # so decreases the length of the ship
  #
  # x - the user's row choice
  # y - the user's col choice
  # return true if the user was hit, false 0.w
  ###############################################
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

  ################################################
  # sunk?
  #
  # checks if the ship has sunk
  #
  # return true if the ship has sunk, else false
  ###############################################
  def sunk?
    if @length < 1
      @sunk = true
      return true
    else
      return false
    end
  end

end
