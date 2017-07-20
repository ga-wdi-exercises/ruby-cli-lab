# require "./battleship"
# require "./game"
# require "./board"
# require "./player"

class Ship
  attr_reader :ship1, :ship2
  attr_accessor :locations

  def initialize()
    locations
  end

  def locations
    @ship1 = ["A2", "A3", "A4"]
    @ship2 = ["C2", "D2", "E2"]
  end

  def shot_check(fire_shot)

    @ship1.map! do |coord|
      if coord == fire_shot
        coord = "XX"
        puts "hit ship one"
      end
    end
    @ship2.map! do |coord|
      if coord == fire_shot
        coord = "XX"
        puts "hit ship two"
      end
    end
  end

end
