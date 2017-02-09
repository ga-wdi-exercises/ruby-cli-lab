
class Square
  attr_accessor :display_border, :display_interior, :is_hit, :is_ship, :location, :row, :column
  @@count = 0

  def initialize(column,row)
    @is_hit = false
    @is_ship = false
    @column = column
    @row = row
    @display_border = "XXXXX"
    @display_interior = "| #{self.column}#{self.row}|"
    @location = "#{self.column}#{self.row}"
    @@count +=1
  end

  def self.count
    @@count
  end

  def create_ship
    @is_ship = true
  end

  def hit
    @is_hit = true
  end
end

$columns = ["A","B","C","D","E","F","G","H","I","J"]
$square_array = []

def create_board
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
      puts j
      puts $square_array.length
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
  return ship_array.map!{|square|square.location}
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
  return ship_array.map!{|square|square.location}
end

def play
 ships_sunk = 0
 puts "Which square do you wanna hit?"
 target = gets.chomp
 target = $square_array.find {|square| square.location==(target)}
 if target.is_hit == true
   puts "You've already hit this square"
 else
   target.is_hit == true
 end
 if target.is_ship == true
    target.display_interior = "| S |"
    ships_sunk += 1
    puts "You sunk a ship!"
 elsif target.is_ship == true
    target.display_interior = "| S |"
 else
    target.display_interior = "| H |"
 end
 if ships_sunk == 2
  puts "you win!"
 end
end
