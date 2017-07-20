require_relative 'board'
require_relative 'player'
require_relative 'ship'


class Game

def initialize players, m, n
  @board = Board.new(m, n)
  @players = players
  @ships = [Ship.new(5), Ship.new(5)]

  play_game
end

def play_game

end

end


jessa = Player.new("Jessa")
players = [jessa]
length = 10
width = 10
Game.new(players, length, width)


# ask user for:
  # name
  # board length
  # board width
