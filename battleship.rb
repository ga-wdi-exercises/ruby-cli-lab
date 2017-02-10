class Square
  attr_accessor :display_border, :display_interior, :is_hit, :location, :row, :column

  def initialize(column,row)
    @is_hit = false
    @column = column
    @row = row
    @display_border = "XXXXX"
    @display_interior = "| #{self.column}#{self.row}|"
    @location = "#{self.column}#{self.row}"
  end

  def hit
    @is_hit = true
  end
end

$columns = ["A","B","C","D","E","F","G","H","I","J"]

def create_board
  $square_array = []
  x= 1
  y = 0
  puts ("     A     B     C     D     E     F     G     H     I     J")
  while x<11
    while y < $columns.length
     $square_array << Square.new($columns[y],x)
      y += 1
    end
  y = 0
  x+=1
  end
end

def display_board
  i = 1
  j = 0
  while i<11
    if i < 10
      array = ["   #{$square_array[j].display_border} #{$square_array[j+1].display_border} #{$square_array[j+2].display_border} #{$square_array[j+3].display_border} #{$square_array[j+4].display_border} #{$square_array[j+5].display_border} #{$square_array[j+6].display_border} #{$square_array[j+7].display_border} #{$square_array[j+8].display_border} #{$square_array[j+9].display_border} \n#{i}  #{$square_array[j].display_interior} #{$square_array[j+1].display_interior} #{$square_array[j+2].display_interior} #{$square_array[j+3].display_interior} #{$square_array[j+4].display_interior} #{$square_array[j+5].display_interior} #{$square_array[j+6].display_interior} #{$square_array[j+7].display_interior} #{$square_array[j+8].display_interior} #{$square_array[j+9].display_interior}\n   #{$square_array[j].display_border} #{$square_array[j+1].display_border} #{$square_array[j+2].display_border} #{$square_array[j+3].display_border} #{$square_array[j+4].display_border} #{$square_array[j+5].display_border} #{$square_array[j+6].display_border} #{$square_array[j+7].display_border} #{$square_array[j+8].display_border} #{$square_array[j+9].display_border}"]
      puts array
      i+=1
      j+=10
    else array = ["   #{$square_array[j].display_border} #{$square_array[j+1].display_border} #{$square_array[j+2].display_border} #{$square_array[j+3].display_border} #{$square_array[j+4].display_border} #{$square_array[j+5].display_border} #{$square_array[j+6].display_border} #{$square_array[j+7].display_border} #{$square_array[j+8].display_border} #{$square_array[j+9].display_border} \n#{i}#{$square_array[j].display_interior}#{$square_array[j+1].display_interior}#{$square_array[j+2].display_interior}#{$square_array[j+3].display_interior}#{$square_array[j+4].display_interior}#{$square_array[j+5].display_interior}#{$square_array[j+6].display_interior} #{$square_array[j+7].display_interior}#{$square_array[j+8].display_interior}#{$square_array[j+9].display_interior}\n   #{$square_array[j].display_border} #{$square_array[j+1].display_border} #{$square_array[j+2].display_border} #{$square_array[j+3].display_border} #{$square_array[j+4].display_border} #{$square_array[j+5].display_border} #{$square_array[j+6].display_border} #{$square_array[j+7].display_border} #{$square_array[j+8].display_border} #{$square_array[j+9].display_border}"]
      puts array
      i+=1
    end
  end
end

class Board
attr_accessor :ship1, :ship2
def add_ship()
 @ship1 = add_ship_horizontal($square_array.sample)
 @ship2 = add_ship_vertical($square_array.sample)
 overlap = @ship1.find_all{|element|@ship2.include? element}
  until overlap == [] do
  @ship2 = add_ship_vertical($square_array.sample)
  overlap = @ship1.find_all{|element|@ship2.include? element}
  end
end
end

def add_ship_horizontal(sq)
  sq_index = $square_array.index(sq)
    if sq.column.between?('A','D')
    ship_array = $square_array[sq_index..sq_index+4]
    end
    if sq.column.between?('E','J')
    ship_array = $square_array[sq_index-4..sq_index]
    end
  return ship_array
end

def add_ship_vertical(sq)
    sq_array = $square_array.find_all{|element| element.column==sq.column}
    sq_index = sq_array.index(sq)
    if sq.row.between?(1,5)
    ship_array = sq_array[sq_index..sq_index+4]
    end
    if sq.row.between?(6,10)
    ship_array = sq_array[sq_index-4..sq_index]
    end
  return ship_array
end

$ships_sunk = 0
$hits = 0
$misses = 0

def play (board)
 puts "You have #{$hits} hits, #{$misses} misses, and #{$ships_sunk} ship sunk.\nWhich square do you want to hit? \nPress Q to quit or C to clear the board and start over."
 target = gets.chomp
 if target == "Q"
   introduction
 elsif target == "C"
   boardNew = Board.new
   boardNew.add_ship
   create_board
   display_board
   $ships_sunk = 0
   $hits = 0
   $misses = 0
   play(boardNew)
 else
 target = $square_array.find {|square| square.location==(target)}
 end

 if target.is_hit == true
   puts "You've already hit this square."
 else
   target.hit
 end

if board.ship1.include?(target) == true
  if board.ship1.all? {|element| element.is_hit == true}
        target.display_interior = "| H |"
        puts "you sunk a ship!"
        $ships_sunk += 1
        $hits +=1
      else
        target.display_interior = "| H |"
        puts "It's a hit!"
        $hits +=1
      end
  elsif board.ship2.include?(target) == true
    if board.ship2.all? {|element| element.is_hit == true}
         target.display_interior = "| H |"
         puts "you sunk a ship!"
         $ships_sunk += 1
         $hits +=1
        else
         target.display_interior = "| H |"
         puts "It's a hit!"
         $hits +=1
        end
    else
      puts "Sorry, you missed."
      target.display_interior = "| M |"
      $misses +=1
    end
 if $ships_sunk == 2
  puts "you win!"
 else
  display_board
  play (board)
 end
end


def introduction
  puts "Welcome to Battleship! Press N to start a new game or R to resume your last one. You can press E to exit the game completely."
  user_input = gets.chomp
  if user_input == "N"
    create_board
    display_board
    board1 = Board.new
    board1.add_ship
    $ships_sunk = 0
    $hits = 0
    $misses = 0
    play (board1)
  end
  if user_input == "R"
    display_board
    play (board1)
  end
  if user_input == "E"
    return "Goodbye!"
  end
end

introduction
