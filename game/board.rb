class Board
  attr_reader :row, :column

  def initialize(col, row)
    @column = col.to_i
    @row = row.to_i
  end

  def grid
    # @alpha = ['a'..'z']
    # puts @alpha
    # @num = ['0'..'9']
    # puts @column.to_i times
    # index = 0
    # while index < @column.to_i
    #   puts @alpha[index] * column.to_i
    #   index += 1
    # end
    puts "#{@horizontal}"
    @horizontal = [" [  ] "].join() * @column
    puts ("#{@horizontal}" + "\n") * (@row)
  end

  def ship_random
    orientation
    location
  end

end
