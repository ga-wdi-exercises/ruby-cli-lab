require_relative 'board'
require_relative 'player'
require_relative 'ship'


class Game

def initialize
  @board = Board.new(10,10)
end

end

game = Game.new
