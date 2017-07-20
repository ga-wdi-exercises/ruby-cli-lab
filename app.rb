require "pry"

class Battle_Board
attr_accessor :board, :ship_board, :ship1, :ship2
  def initialize(size, val)
    @board = []
    @ship_board = []
    @ship_squares = []
    @size = size
    @val = val
    @ship_val = 0
    @score = 0
    @ship1 = []
    @ship2 = []
  end
  def make_board
    @size.times do |row_index|
      @row = []
      @size.times { |column_index| @row << @val } # or row.push(val)
      @board << @row # or board.push(val)
    end
    @board.each do |i|
      print i
      puts " "
    end
    @size.times do |row_index|
      @row = []
      @size.times { |column_index| @row << @ship_val } # or row.push(val)
      @ship_board << @row # or board.push(val)
    end
    puts " "
    puts "1 is untested water, 0 is a miss, and 5 is a hit."
  end

  def guess(x, y)
    puts " "
    @board[y][x] = @ship_board[y][x]
    @board.each do |i|
      print i
      puts " "
    end
    if (@board[y][x] == 0)
      puts " "
      puts "That's a bad miss!"
      @score -= 1
      puts "Your score is #{@score}"
    else
      puts ""
      puts "Nice hit!"
      @score += 5
      puts "Your score is #{@score}"
    end
    puts " "
    puts "1 is untested water, 0 is a miss, and 5 is a hit."
  end

  def make_ship(ship)
    up_or_right = rand(0..1)
    if up_or_right == 0
      x = rand(0..9)

      y = rand(0..4)
      ship << [x, y]
      ship << [x, y + 1]
      ship << [x, y + 2]
      ship << [x, y + 3]
      ship << [x, y + 4]

    else
      y = rand(0..9)

      x = rand(0..4)
      ship << [x, y]
      ship << [x + 1, y]
      ship << [x + 2, y]
      ship << [x + 3, y]
      ship << [x + 4, y]

    end
  end

  def add_ship(ship)
    ship.each do |i|
      y = i[0]
      x = i[1]
      @ship_board[x][y] = 5
    end
  end

end




b1 = Battle_Board.new(10, 1)


b1.make_board
b1.make_ship(b1.ship1)
b1.make_ship(b1.ship2)
b1.add_ship(b1.ship1)
b1.add_ship(b1.ship2)
b1.guess(1, 1)
b1.guess(5, 7)


binding.pry
