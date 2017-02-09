ocean = []
rows = ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J"]
row_index = 0
index = 1
ships_active = 5

possible_index = 0
horizontal_possibilities = []
10.times do |possibility|
  6.times do |possibility2|
    horizontal_possibilities << ["#{possible_index}", "#{possible_index + 1}", "#{possible_index + 2}", "#{possible_index + 3}", "#{possible_index + 4}"]
    possible_index += 1
  end
  possible_index += 4
end

possible_index = 0
vertical_possibilities = []
6.times do |possibility|
  10.times do |possibility2|
    vertical_possibilities << ["#{possible_index}", "#{possible_index + 10}", "#{possible_index + 20}", "#{possible_index + 30}", "#{possible_index + 40}"]
    possible_index += 1
  end
end

possibilites = horizontal_possibilities + vertical_possibilities

class Square
  attr_accessor :id, :status, :symbol
  def initialize(id, status = "Empty", symbol = "+")
    @id = id
    @status = status
    @symbol = symbol
  end

  def hit
    if @status == "Ship"
      puts "It's a Hit!"
      @symbol = "X"
      @status = "Damaged"
    elsif @status == "Empty"
      puts "You've missed!"
      @symbol = " "
    elsif @status == "Damaged"
      puts "Well, that was overkill..."
    end
  end

  def set_ship
    @status = "Ship"
    @symbol = "O"
  end
end

100.times do |square|
  new_square = Square.new("#{rows[row_index]}#{index}")
  ocean << new_square
  # puts new_square.id
  index += 1
  if index == 11
    row_index += 1
    index = 1
  end
end

ocean[0].set_ship
ocean[1].set_ship
ocean[2].set_ship
ocean[3].set_ship
ocean[4].set_ship

placing_index = 0
row_index = 0
puts "    1 2 3 4 5 6 7 8 9 10\n\n"
10.times do |something|
puts "#{rows[row_index]}   #{ocean[placing_index + 0].symbol} #{ocean[placing_index + 1].symbol} #{ocean[placing_index + 2].symbol} #{ocean[placing_index + 3].symbol} #{ocean[placing_index + 4].symbol} #{ocean[placing_index + 5].symbol} #{ocean[placing_index + 6].symbol} #{ocean[placing_index + 7].symbol} #{ocean[placing_index + 8].symbol} #{ocean[placing_index + 9].symbol}"
placing_index += 10
row_index += 1
end

while ships_active > 0
  puts "Take aim! Where would you like to strike?"
  target = gets.chomp
  if target == "Exit" || target == "Quit" || target == "exit" || target == "quit"
    break
  end

  ocean.each do |tile|
    if tile.id == target || tile.id == target.capitalize
      tile.hit
    end
  end
  placing_index = 0
  row_index = 0
  puts "    1 2 3 4 5 6 7 8 9 10\n\n"
  10.times do |something|
  puts "#{rows[row_index]}   #{ocean[placing_index + 0].symbol} #{ocean[placing_index + 1].symbol} #{ocean[placing_index + 2].symbol} #{ocean[placing_index + 3].symbol} #{ocean[placing_index + 4].symbol} #{ocean[placing_index + 5].symbol} #{ocean[placing_index + 6].symbol} #{ocean[placing_index + 7].symbol} #{ocean[placing_index + 8].symbol} #{ocean[placing_index + 9].symbol}"
  placing_index += 10
  row_index += 1
  end
end
