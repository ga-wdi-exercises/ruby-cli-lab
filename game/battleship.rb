require "pry"
require "./game"
require "./ship"
require "./board"

class Menu

  def initialize
    @start_game = nil
    display
    # @board = nil
  end

  def display
    puts "Welcome to battleship, what is your name?"
    puts '...starting game...'
    name = gets.chomp.capitalize
    puts "Welcome to BATTLEFLEET, #{name}."
    puts "#{name}, when prompted enter coordinates in alphanumeric fashion to fire torpedos at the enemy."
      # should start the initiatilization of game
    start
  end

  def start
    # @board = Board.new()
    puts '...Ships spotted...'
    # @ship = Ship.new()
    @game = Game.new(3)
  end

end

test = Menu.new()
# Welcome Messages
