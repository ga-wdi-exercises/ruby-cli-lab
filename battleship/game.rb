# require "pry"


# board [[]] #or ocean_field
# chosen_letter =
# class BattleShip

# attr_accessor :position_1, :position_2, :position_3

ships = {ship4: 4, ship3: 3, ship2: 2, ship1: 2}

def chosen_letter(position)
  column = ["a","b","c","d","e","f","g","h","i","j"].include?(position[0])
end

def chosen_number(position)
  row = ["0","1","2","3","4","5","6","7","8","9"].include?(position[1..-1])
end

def board
  row = ["0","1","2","3","4","5","6","7","8","9"]
  column = ["A","B","C","D","E","F","G","H","I","J"]
  ocean_field = Array.new(10, "X").map {|row| Array.new(10, "X")}

    print "\t"
    print row.join("\t")
    puts
    ocean_field.each_with_index do |row, index|
      print column[index]
      print "\t"
      print row.join("\t")
    puts
    # puts ocean_field
  end
end

board


loop do
  puts "Welcome to Battleship"
  puts "To play type: 'y' "
  user_input = gets.chomp.to_s

    if user_input =='y'
      puts "Game has started..."
      break
    end
  end

ships == 0

while ships
loop do
	# puts 'Select ship type[s1, s2, s3, s4]:'
	puts 'Available Ships - Please choose a ship'
	puts ships
	ship_type = gets.chomp
  puts "You chose #{ship_type}"

	if %w(ship4 ship3 ship2 ship1).include?(ship_type)
		if ships[ship_type.to_sym] > 0
			ships[ship_type.to_sym] -= 1
			current_ship = ship_type
			break;
		else
			puts "Choose another ship."
		end
	else
		puts 'Incorrect ship type.'
	end
end

loop do
	puts 'Enter first position of ship[h6, b2, k2, i7, etc.]:'
	position_1 = gets.chomp

	if chosen_letter(position_1) && chosen_number(position_1)
    puts "Position 1 set #{position_1}"
    break
  else
 	  puts 'Incorrect position.'
  end



loop do
	if ships[ship_type.to_sym] = 1
		to_next_ship           #Сheck that the deck of the ship has 1 space
	else
		gets second_pos
		break;
	end
end


loop do
	puts 'Enter second position of ship[a1, a2, b4, etc.]:'
  # puts position_1 = [chosen_letter(position_1), chosen_number(position_1)]
	position_2 = gets.chomp

  if chosen_letter(position_2) && chosen_number(position_2)
    puts "Position 2 set: #{position_2}"
    # ship -= 1
    # break
  # elsif chosen_letter(position_1) && chosen_number(position_1)
 # 	  puts 'Incorrect position (Already Used)'
  end
  break
end
break
end
board
end

def test(postition)
  letter = position[0]

  #   1 2 3
  # A O . .
  # B x . .
  # C . . .

  keys = board.keys
  index = keys.find_index(letter)
  prev_key = keys[index - 1] #up-down
  unless prev_key.nil?
    is_ship_placed = board[prev_key][postition[1]] #left-right
  end

  #   1 2 3
  # A O . .
  # B . . .
  # C . . .

end
