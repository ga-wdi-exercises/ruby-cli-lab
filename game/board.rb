class Board
  attr_accessor :grid
  attr_reader :display

  def initialize()
    @horizontal = ["A", "B", "C", "D", "E"]
    @vertical = [1, 2, 3, 4, 5]
    @vh = @horizontal.product(@vertical)
    @board = @vh.map! { |block| block.join("") }
  end

  def display
    puts @board[0..4].join(" ")
    puts @board[5..9].join(" ")
    puts @board[10..14].join(" ")
    puts @board[15..19].join(" ")
    puts @board[20..24].join(" ")
  end

end
