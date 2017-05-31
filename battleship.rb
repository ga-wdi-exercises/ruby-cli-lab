require "pry"

$line_break = "#" * 55
$tf = [true, false]

class GameBoard
  attr_accessor :grid
  def initialize
    @grid = []
    self.build_grid
  end

  def build_grid
    row = []
    10.times {row << {display: "~~", ship: false, coord: []}}
    10.times {@grid << row}
    self.add_coords
  end

  def add_coords
    a = ["a","b","c","d","e","f","g","h","i","j"]
    @grid.each_with_index do |row, m|
    z = a[m].to_s
      row.each_with_index do |cell, y|
        puts [z, y]
        cell[:coord] = [z, y]
      end
    end
  end

  def print_head
    system "clear"
    puts $line_break
    puts "##" + " "*51 + "##"
    puts "##" +" "*20+"BATTLESHIP "+" "*20+"##"
    puts "##" + " "*51 + "##"
    puts $line_break
  end

  def print_grid
    self.print_head
    puts $line_break
    i = 0
    grid.each do |row|
      row_label = ["A","B","C","D","E","F","G","H","I","J"]
      printable_row = []
      row.each do |cell|
        printable_row << cell[:display]
      end
      row_string = printable_row.join(" | ")
      puts "## #{row_label[i]} #{row_string} ##"
      # puts "##   #{row_string} ##"
      puts "##" + "-" * 51  + "##"
      i += 1
    end
    bottom_row = []
    l = 0
    10.times do
      bottom_row << " #{l}  "
      l += 1
    end
    print_row = bottom_row.join("|")
    puts "##  #{print_row}##"
    puts $line_break
  end

  def place_ship(boat)
    x = 10 - boat.size
    # vertical ship
    if boat.position
      start_row = (0..x).to_a.sample
      start_col = (0..10).to_a.sample
      boat.size.times do
        $new_game.grid[start_row][start_col][:ship] = true
        start_row += 1
      end
    # horizontal ship
    else
      start_row = (0..10).to_a.sample
      start_col = (0..x).to_a.sample
      boat.size.times do
        $new_game.grid[start_row][start_col][:ship] = true
        start_col += 1
      end
    end
    p $new_game.grid
  end

end

class Boat
  attr_accessor :size, :position
  def initialize(size)
    @size = size
    # Determines vertical (true) or horizontal (false)
    @position = $tf.sample
  end
end

$boat_1 = Boat.new(5)

class MenuPrompts
  attr_accessor :scores, :tries, :input
  def initialize
    @score = 0
    @tries = 10
    @input = ""
  end

  def welcome
    system "clear"
    puts $line_break
    puts "##" + " "*51 + "##"
    puts "##" +" "*14+"Welcome to Battleship!!"+" "*14+"##"
    puts "##" + " "*51 + "##"
    puts $line_break
    puts "##" + " "*51 + "##"
    puts "##" + " "*16+"1. Play new game   "+" "*16+"##"
    puts "##" + " "*16+"2. Resume game     "+" "*16+"##"
    puts "##" + " "*16+"3. Quit            "+" "*16+"##"
    puts "##" + " "*51 + "##"
    puts $line_break
    # self.input = ""
    while self.input != "quit"
      self.input = gets.chomp.downcase
      if self.input == "1"
        $new_game.print_grid
      elsif self.input == "2"
        $new_game.place_ship($boat_1)
      else
        $new_game.add_coords
        puts "Invalid response"

      end
    end
  end

end

$new_game = GameBoard.new
$prompt = MenuPrompts.new

$prompt.welcome

binding.pry
