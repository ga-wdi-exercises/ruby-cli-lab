ocean = []
rows = ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J"]
row_index = 0
index = 1

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
      puts "\n\n**********"
      puts "\n\nIt's a Hit!\n\n"
      @symbol = "X"
      @status = "Damaged"
    elsif @status == "Empty"
      puts "\n\n**********"
      puts "\n\nYou've missed!\n\n"
      @symbol = " "
    elsif @status == "Damaged"
      puts "\n\n**********"
      puts "\n\nWell, that was overkill...\n\n"
    end
  end

  def set_ship
    @status = "Ship"
    # @symbol = "@"
  end
end

100.times do |square|
  new_square = Square.new("#{rows[row_index]}#{index}")
  ocean << new_square
  index += 1
  if index == 11
    row_index += 1
    index = 1
  end
end




occupied_ocean = []
ships_placed = 0
ships_active = 5
turns_elapsed = 0
hits_landed = 0
living_ships = []

while ships_placed < 5
  possibilites.shuffle!
  a = possibilites[0][0]
  b = possibilites[0][1]
  c = possibilites[0][2]
  d = possibilites[0][3]
  e = possibilites[0][4]

  unless occupied_ocean.include? "#{b}"
    unless occupied_ocean.include? "#{b}"
      unless occupied_ocean.include? "#{c}"
        unless occupied_ocean.include? "#{d}"
          unless occupied_ocean.include? "#{e}"
            occupied_ocean << a
            occupied_ocean << b
            occupied_ocean << c
            occupied_ocean << d
            occupied_ocean << e
            living_ships << ["#{a}", "#{b}", "#{c}", "#{d}", "#{e}"]
            a = a.to_i
            b = b.to_i
            c = c.to_i
            d = d.to_i
            e = e.to_i
            ocean[a].set_ship
            ocean[b].set_ship
            ocean[c].set_ship
            ocean[d].set_ship
            ocean[e].set_ship
            ships_placed += 1
          end
        end
      end
    end
  end
end
puts ocean[a].status


placing_index = 0
row_index = 0
puts "    1 2 3 4 5 6 7 8 9 10\n\n"
10.times do |something|
puts "#{rows[row_index]}   #{ocean[placing_index + 0].symbol} #{ocean[placing_index + 1].symbol} #{ocean[placing_index + 2].symbol} #{ocean[placing_index + 3].symbol} #{ocean[placing_index + 4].symbol} #{ocean[placing_index + 5].symbol} #{ocean[placing_index + 6].symbol} #{ocean[placing_index + 7].symbol} #{ocean[placing_index + 8].symbol} #{ocean[placing_index + 9].symbol}"
placing_index += 10
row_index += 1
end

while ships_active > 0
  puts "\nYou've landed #{hits_landed} hits over your #{turns_elapsed} turns."
  puts "Take aim! Where would you like to strike?"
  target = gets.chomp
  if target == "Restart" || target == "restart"
    occupied_ocean = []
    ships_active = 5
    turns_elapsed = 0
    hits_landed = 0
    ocean.each do |ocean|
      ocean.symbol = "+"
      ocean.status = "Empty"
    end
    ships_placed = 0
    while ships_placed < 5
      possibilites.shuffle!
      a = possibilites[0][0]
      b = possibilites[0][1]
      c = possibilites[0][2]
      d = possibilites[0][3]
      e = possibilites[0][4]

      unless occupied_ocean.include? "#{b}"
        unless occupied_ocean.include? "#{b}"
          unless occupied_ocean.include? "#{c}"
            unless occupied_ocean.include? "#{d}"
              unless occupied_ocean.include? "#{e}"
                occupied_ocean << a
                occupied_ocean << b
                occupied_ocean << c
                occupied_ocean << d
                occupied_ocean << e
                living_ships << possibilites[0]
                a = a.to_i
                b = b.to_i
                c = c.to_i
                d = d.to_i
                e = e.to_i
                ocean[a].set_ship
                ocean[b].set_ship
                ocean[c].set_ship
                ocean[d].set_ship
                ocean[e].set_ship
                ships_placed += 1
              end
            end
          end
        end
      end
    end
  elsif target == "Exit" || target == "Quit" || target == "exit" || target == "quit"
    break
  end

  ocean.each do |tile|
    if tile.id == target || tile.id == target.capitalize
      if tile.status == "Ship"
        hits_landed = hits_landed + 1
      end
      tile.hit
      # living_ships.each do |ship|
      #   f =
      #   g =
      #   h =
      #   i =
      #   j =
      #   if ship[0].status == "Damaged"
      #     if ship[1].status == "Damaged"
      #       if ship[2].status == "Damaged"
      #         if ship[3].status == "Damaged"
      #           if ship[4].status == "Damaged"
      #             puts "YOU SUNK MY BATTLESHIP!!!"
      #           end
      #         end
      #       end
      #     end
      #   end
      # end
      turns_elapsed = turns_elapsed + 1
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
