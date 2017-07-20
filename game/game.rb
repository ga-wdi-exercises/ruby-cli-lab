require_relative 'board'
require_relative 'player'
require_relative 'ship'


class Game

  def initialize

    puts "Enter Player Name: "
    players = [gets.chomp]

    @players = players.map { |player|
      Player.new(player)
    }

    puts "Enter Board Length: "
    m = gets.chomp.to_i
    puts "Enter Board Height: "
    n = gets.chomp.to_i
    @board = Board.new(m, n)

    # add error checking for length
    puts "Enter desired ship length: "
    l = gets.chomp.to_i
    @ships = [Ship.new(l), Ship.new(l)]

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
        valid = @board.valid_placement? row, col, ship.length, dir

      end

      @board.add_ship row, col, ship.length, dir

      ship.init dir, row, col

      ship
    }

      @board.render

  end

  def play_game

    while @ships.length > 0

      player = @players[0]

      move = player.get_move

      if move == -1
        puts "you quit"
        break
      end
      row = move[0]
      col = move[1]

      if (!@board.valid_move? row, col)
        puts "You already tried this!"
        next
      end

      @board.set_hit? row, col
      @board.set_miss? row, col

      @ships.map! { |ship|
        ship.hit_me? row, col
        ship
      }

      @ships.select! { |ship| !ship.sunk?  }

      @board.render

    end

    "You won!"

  end
end

puts "Welcome to Battleship! Enter -1 to Quit"
Game.new()
