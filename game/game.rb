class Game
  def initialize(num_start)
    
  end

  def user_turn
    puts "Please enter a coordinate for your next shot (example: A, 2)."
    fire_shot = []
    while @fire_shot.length != 2
      @fire_shot = gets.chomp.to_a
    end
  end

end
