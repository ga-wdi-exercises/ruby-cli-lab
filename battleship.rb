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


end


class Ship

  def initialize(direction)
    @direction = direction
  end

  def place_ship(board)
    if @direction == "h"
      x = rand(0..5)
      y = rand(0..9)
      puts "x: #{x}"
      puts "y: #{y}"
      5.times do |i|
        board.grid[y][x+i].store_ship
      end
    else
      x = rand(0..9)
      y = rand(0..5)
      puts "x: #{x}"
      puts "y: #{y}"
      5.times do |i|
        board.grid[y+i][x].store_ship
      end
    end
  end

end

class Space
attr_accessor :display, :value
  def initialize
    @display = "?"
    @value = "?"
  end

  def store_ship
    @value = "s"
  end

  def hit
    @display = "x"
    @value = "x"
  end

  def miss
    @display = "o"
    @value = "o"
  end

end

class Player
  def attack
    puts "Enter a space"
    input = gets.chomp
    input.to_a
    puts input[0]
    puts input[1]
  end
end

board1 = Board.new("player1")
board1.createGrid

ship1 = Ship.new("h")
ship2 = Ship.new("v")
ship1.place_ship(board1)
ship2.place_ship(board1)



board1.display_grid
puts "-" * 20
board1.display_hidden_grid

player1 = Player.new
player1.attack

# binding.pry
