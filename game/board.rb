require "Matrix"

class Board

  WATER = "-"
  SHIP = "S"
  HIT = "X"
  MISS = "O"


  attr_reader :length, :height, :matrix

  ################################################
  # initialize
  #
  # initializes board with 
  #
  # row - the x starting location of the ship
  # column - the y starting location of the ship
  # length - the length of the ship
  # dir - the orientation (0 if horz, 1 vert)
  ###############################################
  def initialize m, n
    @length = m
    @height = n
    @matrix = Array.new(m) { Array.new(n, "-")}

  end

  def reset
    @matrix = Array.new(m) { Array.new(n, "-")}
  end

  ################################################
  # valid_placement?
  #
  # checks if the length of the ship can fit
  # in the specified area
  #
  # row - the x starting location of the ship
  # column - the y starting location of the ship
  # length - the length of the ship
  # dir - the orientation (0 if horz, 1 vert)
  ###############################################
  def valid_placement? row, col, ship_len, dir
    if dir == 0
      if col + ship_len > @length
        return false
      end
    elsif dir == 1
      if row + ship_len > @height
        return false
      end
    end

    # check if a ship is already there
    i = ship_len
    if dir == 0
      while i > 0
        if @matrix[row][col] == "S"
          return false
        end
        col += 1
        i -= 1
      end
    else
      while i > 0
        if @matrix[row][col] == "S"
          return false
        end
        row += 1
        i -= 1
      end
    end
    return true
  end


  ################################################
  # add_ship
  #
  # adds a ship to the specified area
  #
  # row - the x starting location of the ship
  # column - the y starting location of the ship
  # length - the length of the ship
  # dir - the orientation (0 if horz, 1 vert)
  #################################################
  def add_ship row, col, len, dir
    i = len
    if dir == 0
      while i > 0
        @matrix[row][col] = "S"
        col += 1
        i -= 1
      end
    else
      while i > 0
        @matrix[row][col] = "S"
        row += 1
        i -= 1
      end
    end
  end


  ################################################
  # get_position
  #
  # returns the item at matrix row, col
  #
  # row - the x location
  # column - the y location
  ###############################################
  def get_position row, col
    return @matrix[row][col]
  end


  ################################################
  # set_position
  #
  # sets the item at matrix row, col
  #
  # row - the x location
  # column - the y location
  # str - the setting string
  ###############################################
  def set_position row, col, str
     @matrix[row][col] = str
  end


  ################################################
  # valid_move?
  #
  # a move is valid only if it has not been made
  # on that square yet
  #
  # row - the x location
  # column - the y location
  ###############################################
  def valid_move? row, col
    return ![HIT, MISS].include?(get_position row, col)
  end

  ################################################
  # set_hit?
  #
  # sets the position at matrix row, col to
  # a HIT only if it is a SHIP
  #
  # row - the x location
  # column - the y location
  #
  # returns true if it is a HIT false o.w
  ###############################################
  def set_hit? row, col
    if @matrix[row][col] == SHIP
      set_position row, col, HIT
      return true
    end
    return false
  end

  ################################################
  # set_miss?
  #
  # sets the position at matrix row, col to
  # a MISS only if it is WATER
  #
  # row - the x location
  # column - the y location
  #
  # returns true if it is a MISS false o.w
  ###############################################
  def set_miss? row, col
    if @matrix[row][col] == WATER
      set_position row, col, MISS
      return true
    end
    return false
  end

  ################################################
  # to_s
  #
  # returns a string representation of the matrix
  ###############################################
  def to_s
    string = ""
    @matrix.each do |item|

      item.each { |piece|
        if [WATER, SHIP].include?(piece)
          string += "#{WATER} "
        else
          string += piece.to_s + " "
        end
      }
        string += "\n"
    end
    string
  end

  ################################################
  # render
  #
  # prints the string representation of the matrix
  ###############################################
  def render
    puts to_s
  end

end
