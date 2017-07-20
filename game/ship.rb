# require "./battleship"
# require "./game"
# require "./board"
# require "./player"

class Ship
  attr_reader :ship1, :ship2

  def initialize()
    locations
  end

  def locations
    @ship1 = ["A2", "A3", "A4"]
    @ship2 = ["C2", "D2", "E2"]
  end

  def shot_check

    for coord in @ship1 do
      if coord == fire_shot
        @ship1[coord] = "XX"
      else
        for coord in @ship2 do
          if coord == fire_shot
            @ship2[coord] = "XX"
          end
        end
        puts @ship2
        puts @ship1
      # else fire_shot
        # returns []
      end
    end

  end

end
