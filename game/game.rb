# require "./battleship"
# require "./board"
# require "./ship"
# require "./player"

class Game

  def initialize(turns)
    @counter = turns
    @board = Board.new
    @ships = Ship.new
    user_turn
    # create counter
  end

  def user_turn

    while @counter > 0
      @board.display
      puts "Please enter a coordinate for your shot (example: A1)."
      fire_shot = 'test'
      while fire_shot.length != 2
        fire_shot = gets.chomp
        @ships.shot_check(fire_shot)
      end
        @counter -= 1
        puts @counter
    end

  end

end
