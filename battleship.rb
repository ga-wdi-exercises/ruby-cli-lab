require 'pry'

# Coordinate class
class Coordinate
	attr_accessor :x, :y, :is_ship, :miss, :hit

	def initialize x, y
		@x = x
		@y = y
		@is_ship = false
		@miss = false
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

	def is_point_empty point
		# puts "Checking (#{point[0].x}, #{point[0].y}...)"
		# Check for edge
		if point[0] == nil
			puts "Point doesn't exit"
			# Point is outside gameboard
			return false
		elsif point[0].is_ship
			puts point[0]
			puts "Point is taken"
			# break
		else
			puts "Point (#{point[0].x}, #{point[0].y}) is empty"
			return true
		end
	end

	# Check horizontal, given point and 4 to left
	def check_horizontal x, y
		can_set_ship = false
		0.upto 4 do |i|
			point = @grid.select { |card| card.x == (x + i) && card.y == y }
			if is_point_empty point
				can_set_ship = true
			else
				can_set_ship = false
				break
			end
		end
		if can_set_ship
			set_ship_horizontal x, y
		end
	end

	# Check vertical, given point and 4 above
	def check_vertical x, y
		can_set_ship = false
		0.upto 4 do |i|
			point = @grid.select { |card| card.x == x && card.y == (y + i) }
			if is_point_empty point
				can_set_ship = true
			else
				can_set_ship = false
			end
		end
		if can_set_ship
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
			point = @grid.select { |card| card.x == x && card.y == (y + i) }
			point[0].is_ship = true
		end
	end

	# Print board in console
	def print_board
		# Column label
		print_column_label
		print_row_border
		print_row
	end # end print_board

	def print_column_label
		print "\n\n   "
		1.upto @size do |i|
			print "  #{i} "
		end
	end

	def print_row_border
		print "\n    +"
		@size.times do
			print"---+"
		end
	end

	def print_row
		1.upto @size do |y|
			print "\n "
			if y < 10
				print " "
			end
			print "#{y} |"
			1.upto @size do |x|
				point = grid.select { |card| card.x == x && card.y == y}
				if point[0].is_ship
					print " * |"
				elsif point[0].miss
					print " o |"
				else
					print "   |"
				end
			end
			print_row_border
		end
	end


end # end Board class



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
