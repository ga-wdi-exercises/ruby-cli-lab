require 'pry'

# Coordinate class
class Coordinate
	attr_accessor :x, :y, :is_ship, :hit

	def initialize x, y
		@x = x
		@y = y
		@is_ship = false
		@hit = false
	end
end

# Game Board class, 10x10 grid, array holding coordinates
class Board
	attr_accessor :grid, :size

	def initialize size
		if size < 5
			puts "Board must not be smaller than 5"
		elsif size > 15
			puts "Board must not be greater than 15"
			else
			@size = size
			@grid = []
			(1..size).each do |x|
				(1..size).each do |y|
					c = Coordinate.new x, y
					@grid << c
				end
			end
		end
	end

	# Places 2 5x1 battleships on grid
	def place_ship
		# Randomly select starting coord & orientation
		x = rand(1...@size+1)
		y = rand(1...@size+1)
		orientation = rand(0..1) # 0 = horizonal, 1 = vertical
		puts "(#{x}, #{y}) #{orientation}"

		# Check for obstructions
		if orientation == 0
			check_horizontal x, y
		elsif orientation == 1
			check_vertical x, y
		end
	end

	# Check horizontal, given point and 4 to left
	def check_horizontal x, y
		is_occupied = false
		0.upto 4 do |i|
			point = @grid.select { |card| card.x == (x + i) && card.y == y }
			# Check for edge
			if point[0] == nil
				puts "Square doesn't exit"
				# Point is outside gameboard
				is_occupied = true
				break
			elsif point[0].is_ship != false
				puts "Square is empty"
				# Point is taken
				is_occupied = true
				break
			else
				puts "Point (#{x+i}, #{y}) is empty"
			end
		end
		if is_occupied == false
			set_ship_horizontal x, y
		end
	end

	# Check vertical, given point and 4 above
	def check_vertical x, y
		is_occupied = false
		0.upto 4 do |i|
			point = @grid.select { |card| card.x == x && card.y == (y + 1) }
			# Check for edge
			if point[0] == nil
				puts "Square doesn't exit"
				# Point is outside gameboard
				is_occupied = true
				break
			elsif point[0].is_ship != false
				puts "Square is empty"
				# Point is taken
				is_occupied = true
				break
			else
				puts "Point (#{x}, #{y + 1}) is empty"
			end
		end
		if is_occupied == false
			set_ship_vertical x, y
		end
	end

	# Lock in ship horizontally from given point, called from place_ship
	def set_ship_horizontal x, y
		0.upto 4 do |i|
			point = @grid.select { |card| card.x == (x + i) && card.y == y }
			point[0].is_ship = true
		end
	end

	# Lock in ship vertically from given point, called from place_ship
	def set_ship_vertical x, y
		0.upto 4 do |i|
			point = @grid.select { |card| card.x == x && card.y == (y + 1) }
			point[0].is_ship = true
		end
	end

	# Print board in console
	def print_board
		# Column label
		print "\n\n   "
		1.upto @size do |i|
			print "  #{i} "
		end

		# Row Border
		print "\n    +"
		@size.times do
			print"---+"
		end

		# Rows
		1.upto @size do |i|
			print "\n "
			if i < 10
				print " "
			end
			print "#{i} |"
			@size.times do
				print"   |"
			end
			# Row Border
			print "\n    +"
			@size.times do
				print"---+"
			end
		end
	end

end


# Menu class
class Menu
	def self.display
		while 1
			puts "Choose one of the following:"
			puts " [1] Start game"
			puts " [2] "
			puts " [3] Exit"
			print ">>> "
			input = gets.chomp.downcase
			if ["1","2","3","exit"].include? input
				self.select input
				return input
				break
			else
				puts "Invalid option."
			end
		end
	end
	def self.select input
		puts "You selected #{input}"
	end
end



b = Board.new 10
b.print_board

# Menu loop
# loop do
# 	# Open menu
# 	input = Menu.display
# 	if input.downcase == "exit" || input == "3"
# 		break
# 	end
# end

binding.pry
puts 'Done'
