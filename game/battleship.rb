require "pry"
require "./game"
require "./ship"
require "./board"
require "./player"

class Menu

  def initialize
    @start_game = nil
    puts "Welcome to BATTLEFLEET." + "\n" + "Choose your next battle!"
    until @start_game == 1 do
      puts "To begin enter '1'" + "\n"
      @start_game = gets.chomp.to_i
      # should start the initiatilization of game
    end
    start
  end

  def start
    puts '...starting game...'
    @board = Board.new()
    puts '...Ships spotted...'
    @ship = Ship.new()
    @game = Game.new(3)
  end

end

test = Menu.new()
