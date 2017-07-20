class Menu
  def initialize
    @game = true
    @ocean = nil
  end

  def display
    while @game
      puts "Welcome Admiral!"
      puts "Choose one of the following"
      puts "1 - Play the game"
      puts "2 - Hear a joke"
      puts "3 - Quit"
      input = gets.chomp.to_i
      if input == 1
        play
      elsif input == 2
        joke
      elsif input == 3
        quit
      end
    end
  end

  def play
    puts "Let's play!"
    @ocean = Ocean.new(2)
    puts ocean.user_grid
    puts "Type the X and Y coordinates where you would like to fire your torpedo"
    input = gets.chomp
    ocean.torpedo(input)
  end

  def joke
    puts "blah blah blah"
  end

  def quit
    @game = false
  end

end
