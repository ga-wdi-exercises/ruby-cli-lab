require "Matrix"

class Board

  def initialize m, n
    @length = m
    @height = n
    @board = Matrix.build(m, n) {|row, col| "X" }
    render
  end

  def reset
    @board = Matrix.build(m, n) {|row, col| "X" }
  end

  # valid_move
  # row - the x starting location of the ship
  # column - the y starting location of the ship
  # length - the length of the ship
  # type - the placement directions
  #   0 if horizontal
  #   1 if vertical
  def valid_move? row, column, len, type
    # error check type = 0 or 1 only
    if type == 0
      if row + len > @length
        return false
      end
    elsif type == 1
      if col + len > @height
        return false
      end
    else
      puts "not a valid direction"
      return false
    end
    return true
  end


  def render
    i = 0
    @board.each do |number|
      print number.to_s + " "
      i+= 1
      if i == @board.column_size
        print "\n"
        i = 0
      end
    end
  end
end
