class Menu
  def initialize
    @game = true
    @ocean = nil
  end

  def display
    while @game
      puts "Welcome Admiral!"
      puts "Choose one of the following"
      puts "1 - New game"
      puts "2 - Hear a joke"
      puts "3 - Quit"
      input = gets.chomp.to_i
      if input == 1
        puts "Let's play!"
        play
      elsif input == 2
        joke
      elsif input == 3
        quit
      end
    end
  end

  def play
    playing = true
    @ocean = Ocean.new(2)
    @ocean.make_board
    while playing
      @ocean.display_board
      puts "Type the X coordinate you would like to hit (or exit to quit)"
      x = gets.chomp
      if x == "exit"
        playing = false
        display
      else
        x = x.to_i
        puts "Type the Y coordinate you would like to hit (or exit to quit)"
      end
      y = gets.chomp
      if y == "exit"
        playing = false
        display
      else
        y = y.to_i
        @ocean.torpedo(x, y)
      end
    end
  end

  def joke
    puts "Feature coming soon"
  end

  def quit
    @game = false
  end

end
