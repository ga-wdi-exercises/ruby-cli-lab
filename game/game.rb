# require "./battleship"
# require "./board"
# require "./ship"
# require "./player"



class Game
  def initialize(turns)
    @counter = turns
    user_turn
    # create counter
  end

  def user_turn

    while @counter > 0
      puts "Please enter a coordinate for your next shot (example: A1)."
      fire_shot = 'test'
      while fire_shot.length != 2
        fire_shot = gets.chomp
      end
        @shot_check
        @counter -= 1
        puts @counter
        # change location to X
    end
  end

end
