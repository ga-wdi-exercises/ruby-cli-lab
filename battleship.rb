require "pry"

class Board
  attr_accessor :player, :grid

  def initialize(player)
    @player = player
    @grid = []

  end

  def clearGrid
    @grid = @grid.clear
  end

  def createGrid

    10.times do |i|
      grid_row = []
      10.times do
        space = Space.new
        grid_row.push(space)
      end
      @grid.push(grid_row)
    end
  end

  def display_grid
    i = 0
    for row in @grid do
      display_row = []
      for space in row do
        display_row.push(space.display)
      end
      display_row.push(i.to_s)
      puts display_row.join (" ")
      i += 1
    end

    column = ("A".."J").to_a
    column.push("+")
    puts column.join (" ")

  end

  def display_hidden_grid
    i = 0
    for row in @grid do
      display_row = []
      for space in row do
        display_row.push(space.value)
      end
      display_row.push(i.to_s)
      puts display_row.join (" ")
      i += 1
    end

    column = ("A".."J").to_a
    column.push("+")
    puts column.join (" ")
  end


  def compareSpot(x,y)
    if @grid[y][x].value == "s"
      @grid[y][x].hit
    elsif @grid[y][x].value == "x"
      puts "You already hit that space"
    else
      @grid[y][x].miss
    end

  end
end

class Ship

  def initialize(direction)
    @direction = direction
    @floats = true
    @locations = []
  end

  def place_ship(board)
    if @direction == 0
      x = rand(0..5)
      y = rand(0..9)
      puts "x: #{x}"
      puts "y: #{y}"
      5.times do |i|
        board.grid[y][x+i].store_ship
        @locations.push([y,x+i])
      end
    else
      x = rand(0..9)
      y = rand(0..5)
      puts "x: #{x}"
      puts "y: #{y}"
      5.times do |i|
        board.grid[y+i][x].store_ship
        @locations.push([y+i,x])
      end
    end

  def did_ship_sink(board,player)
    for location in @locations
      y = location[0]
      x = location[1]
      if board.grid[y][x].value == "s"
        return false
      end
    end
    puts "Ship sank"
    return true
  end


  end

end

class Space
attr_accessor :display, :value
  def initialize
    @display = "_"
    @value = "_"
  end

  def store_ship
    @value = "s"
  end

  def hit
    @display = "x"
    @value = "x"
    puts "HIT!"
  end

  def miss
    @display = "o"
    @value = "o"
    puts "MISS!"
  end

end

class Player
  attr_accessor :x, :y, :turns, :win

  def initialize
    @x = ""
    @y = ""
    @turns = 0
    @win = false
  end

  def attack(board,ship1,ship2,input)
    input.split("")
    @x = self.convert_input(input[0])
    @y = input[1].to_i
    board.compareSpot(@x,@y)
    display_test(board)
    if ship1.did_ship_sink(board,self) && ship2.did_ship_sink(board,self)
      self.win = true
    end
  end

  def convert_input(letter)
    letter.downcase!
    letters = ("a".."j").to_a
    if letters.index(letter) != nil
      return letters.index(letter)
    else
      return 0
    end
  end


end


class Menu
  def initialize(argument)
    @argument = argument
    @board1 = Board.new("player1")
    @ship1 = Ship.new(rand(0..1))
    @ship2 = Ship.new(rand(0..1))
  end

  def self.display
    puts "BATTLESHIP"
    self.new_game
  end

  def self.new_game
    player1 = Player.new
    board1 = Board.new("player1")
    board1.createGrid
    ship1 = Ship.new(rand(0..1))
    ship2 = Ship.new(rand(0..1))
    ship1.place_ship(board1)
    ship2.place_ship(board1)
    self.start_game(player1, board1, ship1, ship2)
  end

  def self.start_game(player1, board1, ship1, ship2)
    loop do
      puts "Enter a space"
      input = gets.chomp
      case input
      when "exit"
        break
      when "new"
        board1.clearGrid
        board1.createGrid
        board1.display_grid
        self.new_game
      else
        player1.attack(board1, ship1, ship2, input)
        player1.turns += 1
        puts "Turns: #{player1.turns}"
      end
      if player1.win == true
        puts "WINNER!"
        break
      end
    end
  end

end

def display_test(board)
  board.display_grid
  puts "-" * 20
  board.display_hidden_grid
end





Menu.display

# binding.pry
