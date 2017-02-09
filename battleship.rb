
$line_break = "#" * 55
$tf = [true, false]

class GameBoard
  attr_accessor :grid, :cell
  def initialize
    @grid = []
    @cell = {display: "~~", ship: false}
    self.build_grid
  end

  def build_grid
    row = []
    10.times {row << self.cell}
    10.times {@grid << row}
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
    # vertical ship
    if boat.position
      puts "vertical ship"
      x = 10 - boat.size
      start = (0..x).to_a.sample
      puts start

    # horizontal ship
    else
      puts "horizontal ship"
      start = (0..10).to_a.sample
      puts start
    end
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
        puts "Invalid response"

      end
    end
  end

end

$new_game = GameBoard.new
$prompt = MenuPrompts.new

$prompt.welcome
