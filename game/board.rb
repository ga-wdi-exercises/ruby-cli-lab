require "Matrix"

class Board

  WATER = "-"
  SHIP = "S"
  HIT = "X"
  MISS = "O"


  attr_reader :length, :height, :matrix

  def initialize m, n
    @length = m
    @height = n
    @matrix = Array.new(m) { Array.new(n, "-")}

  end

  def reset
    @matrix = Array.new(m) { Array.new(n, "-")}
  end

  # valid_move
  # row - the x starting location of the ship
  # column - the y starting location of the ship
  # length - the length of the ship
  # dir - the placement directions
  #   0 if horizontal
  #   1 if vertical
  def valid_placement? row, col, ship_len, dir
    # error check type = 0 or 1 only
    if dir == 0
      if col + ship_len > @length
        return false
      end
    elsif dir == 1
      if row + ship_len > @height
        return false
      end
    else
      # "not a valid direction"
      return false
    end
    return true
  end

  # add_ship
  # row - the x starting location of the ship
  # column - the y starting location of the ship
  # len = length of the ship
  # dir = the orientation (0 for hor, 1 vert)
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

  # returns the item at matrix row, col
  def get_position row, col
    return @matrix[row][col]
  end

  # sets the matrix[row][col] to str
  def set_position row, col, str
     @matrix[row][col] = str
  end

  # renders the board to the user
  def render
    puts to_s
  end

  def to_s
    string = ""
    i = 0
    @matrix.each do |item|
      if [WATER, SHIP].include?(item)
        string += "#{WATER} ".to_str
      else
        string += item.to_s + " "
      end
      i+= 1
      if i == @length
        string += "\n"
        i = 0
      end
    end

    puts string
    string
  end

end
