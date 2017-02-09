# Menu that can be called at any time using Menu.display

class Menu
  def self.display
    while 1
      puts "Welcome to Battleship! Choose from the following:"
      puts "1 - Start a new game"
      puts "2 - Continue previous game"
      puts "3 - Quit game"
      puts "4 - Show score"
      puts "5 - Remind me of my torpedo shots"
      input = gets.chomp
      if ["1","2", "3", "4", "5"].include? input
        self.select input
        break
      else
        puts "Invalid option."
      end
    end
  end
  def self.select number
    puts "You selected #{number}"
  end
end

# Gameboard setup

class Ocean
  attr_accessor :x_axis, :y_axis, :board, :shipa, :shipb
  def initialize
    @x_axis = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
    @y_axis = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
    @board = []
    @shipa = []
    @shipb = []
  end
  def new_ocean
    pairs = @x_axis.product(@y_axis)
    pairs.each do |pair|
      @board << {x_id: pair[0], y_id: pair[1]}
    end
  end
  def place_ships
    #first ship
    start_x = Random.new
    start_x = start_x.rand(1..6)
    start_y = Random.new
    start_y = start_y.rand(1..6)
    start_direction = Random.new
    start_direction = start_direction.rand(0..1)
    if start_direction == 0 #this ship is going vertically
      @board.find { |i| i[:x_id] == start_x && i[:y_id] == start_y } [:ship] = true
      @board.find { |i| i[:x_id] == start_x && i[:y_id] == (start_y + 1) } [:ship] = true
      @board.find { |i| i[:x_id] == start_x && i[:y_id] == (start_y + 2) } [:ship] = true
      @board.find { |i| i[:x_id] == start_x && i[:y_id] == (start_y + 3) } [:ship] = true
      @board.find { |i| i[:x_id] == start_x && i[:y_id] == (start_y + 4) } [:ship] = true
    elsif start_direction == 1 #this ship is going horizontally
      @board.find { |i| i[:x_id] == start_x && i[:y_id] == start_y } [:ship] = true
      @board.find { |i| i[:x_id] == (start_x + 1) && i[:y_id] == start_y } [:ship] = true
      @board.find { |i| i[:x_id] == (start_x + 2) && i[:y_id] == start_y } [:ship] = true
      @board.find { |i| i[:x_id] == (start_x + 3) && i[:y_id] == start_y } [:ship] = true
      @board.find { |i| i[:x_id] == (start_x + 4) && i[:y_id] == start_y } [:ship] = true
    end
    puts @board
    #second ship
    start_x2 = Random.new
    start_x2 = start_x2.rand(1..6)
    start_y2 = Random.new
    start_y2 = start_y2.rand(1..6)
    start_direction2 = Random.new
    start_direction2 = start_direction2.rand(0..1)
    if start_direction2 == 0 && start_direction == 0 #both ships vertical
      if start_x2 == start_x
        @board.find { |i| i[:x_id] == (start_x2 + 1) && i[:y_id] == start_y2 } [:ship] = true
        @board.find { |i| i[:x_id] == (start_x2 + 1) && i[:y_id] == (start_y2 + 1) } [:ship] = true
        @board.find { |i| i[:x_id] == (start_x2 + 1) && i[:y_id] == (start_y2 + 2) } [:ship] = true
        @board.find { |i| i[:x_id] == (start_x2 + 1) && i[:y_id] == (start_y2 + 3) } [:ship] = true
        @board.find { |i| i[:x_id] == (start_x2 + 1) && i[:y_id] == (start_y2 + 4) } [:ship] = true
      else
        @board.find { |i| i[:x_id] == (start_x2) && i[:y_id] == start_y2 } [:ship] = true
        @board.find { |i| i[:x_id] == (start_x2) && i[:y_id] == (start_y2 + 1) } [:ship] = true
        @board.find { |i| i[:x_id] == (start_x2) && i[:y_id] == (start_y2 + 2) } [:ship] = true
        @board.find { |i| i[:x_id] == (start_x2) && i[:y_id] == (start_y2 + 3) } [:ship] = true
        @board.find { |i| i[:x_id] == (start_x2) && i[:y_id] == (start_y2 + 4) } [:ship] = true
      end
    elsif start_direction2 == 1 && start_direction == 1 #both ships horizontal
      if start_y2 == start_y
        @board.find { |i| i[:x_id] == (start_x2) && i[:y_id] == (start_y2 + 1) } [:ship] = true
        @board.find { |i| i[:x_id] == (start_x2 + 1) && i[:y_id] == (start_y2 + 1) } [:ship] = true
        @board.find { |i| i[:x_id] == (start_x2 + 2) && i[:y_id] == (start_y2 + 1) } [:ship] = true
        @board.find { |i| i[:x_id] == (start_x2 + 3) && i[:y_id] == (start_y2 + 1) } [:ship] = true
        @board.find { |i| i[:x_id] == (start_x2 + 4) && i[:y_id] == (start_y2 + 1) } [:ship] = true
      else
        @board.find { |i| i[:x_id] == (start_x2) && i[:y_id] == (start_y2) } [:ship] = true
        @board.find { |i| i[:x_id] == (start_x2 + 1) && i[:y_id] == (start_y2) } [:ship] = true
        @board.find { |i| i[:x_id] == (start_x2 + 2) && i[:y_id] == (start_y2) } [:ship] = true
        @board.find { |i| i[:x_id] == (start_x2 + 3) && i[:y_id] == (start_y2) } [:ship] = true
        @board.find { |i| i[:x_id] == (start_x2 + 4) && i[:y_id] == (start_y2) } [:ship] = true
      end
    elsif start_direction2 == 1 && start_direction == 0 #second ship horizontal
      if start_y2 >= start_y && start_y2 <= (start_y + 4)
        if start_y2 < 6
          start_y2 = start_y2 + 5
          @board.find { |i| i[:x_id] == (start_x2) && i[:y_id] == (start_y2) } [:ship] = true
          @board.find { |i| i[:x_id] == (start_x2 + 1) && i[:y_id] == (start_y2) } [:ship] = true
          @board.find { |i| i[:x_id] == (start_x2 + 2) && i[:y_id] == (start_y2) } [:ship] = true
          @board.find { |i| i[:x_id] == (start_x2 + 3) && i[:y_id] == (start_y2) } [:ship] = true
          @board.find { |i| i[:x_id] == (start_x2 + 4) && i[:y_id] == (start_y2) } [:ship] = true
        else
          start_y2 = start_y2 - 1
          @board.find { |i| i[:x_id] == (start_x2) && i[:y_id] == (start_y2) } [:ship] = true
          @board.find { |i| i[:x_id] == (start_x2 + 1) && i[:y_id] == (start_y2) } [:ship] = true
          @board.find { |i| i[:x_id] == (start_x2 + 2) && i[:y_id] == (start_y2) } [:ship] = true
          @board.find { |i| i[:x_id] == (start_x2 + 3) && i[:y_id] == (start_y2) } [:ship] = true
          @board.find { |i| i[:x_id] == (start_x2 + 4) && i[:y_id] == (start_y2) } [:ship] = true
        end     
    elsif start_direction2 == 0 && start_direction == 1 #second ship vertical
    end
  end
end
