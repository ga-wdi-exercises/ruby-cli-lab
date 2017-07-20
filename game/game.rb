require_relative 'board'
require_relative 'player'
require_relative 'ship'


class Game

def initialize players, m, n
  @board = Board.new(m, n)
  @players = players
  @ships = [Ship.new(5), Ship.new(5)]

  setup_game
  play_game
end

def setup_game
  @ships.map! { |ship|

    valid = false
    col = 0
    row = 0
    dir = 0

    while !valid

      col = rand(@board.length)
      row = rand(@board.height)
      dir = rand(1)
      valid = valid_placement? row, col, ship.length, dir

    end

    @board.add_ship row, col, ship.length, dir

    ship.init dir, row, col
  }

    @board.render

end

def play_game

  while @ships.length > 0

    player = player[0]

    move = player.getMove
    row = move[0]
    col = move[1]

    if (!valid_move? row, col)
      puts "You already tried this!"
      next
    end

  set_hit? row, col
  set_miss? row, col

  @ships.map! { |ship|
    hit_me? row, col

    if !ship.sunk?
      return ship
    end
  }

  @board.render

  end

"You won!"

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
