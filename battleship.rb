require 'pry'

# Colorize helper class
# from http://stackoverflow.com/questions/1489183/colorized-ruby-output
class String
	def black;          "\e[30m#{self}\e[0m" end
	def red;            "\e[31m#{self}\e[0m" end
	def green;          "\e[32m#{self}\e[0m" end
	def brown;          "\e[33m#{self}\e[0m" end
	def blue;           "\e[34m#{self}\e[0m" end
	def magenta;        "\e[35m#{self}\e[0m" end
	def cyan;           "\e[36m#{self}\e[0m" end
	def gray;           "\e[37m#{self}\e[0m" end

	def bg_black;       "\e[40m#{self}\e[0m" end
	def bg_red;         "\e[41m#{self}\e[0m" end
	def bg_green;       "\e[42m#{self}\e[0m" end
	def bg_brown;       "\e[43m#{self}\e[0m" end
	def bg_blue;        "\e[44m#{self}\e[0m" end
	def bg_magenta;     "\e[45m#{self}\e[0m" end
	def bg_cyan;        "\e[46m#{self}\e[0m" end
	def bg_gray;        "\e[47m#{self}\e[0m" end

	def bold;           "\e[1m#{self}\e[22m" end
	def italic;         "\e[3m#{self}\e[23m" end
	def underline;      "\e[4m#{self}\e[24m" end
	def blink;          "\e[5m#{self}\e[25m" end
	def reverse_color;  "\e[7m#{self}\e[27m" end
end

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
	attr_accessor :grid, :size, :num_ships, :num_guesses

	def initialize size
		if size < 5
			puts "Board must not be smaller than 5"
		elsif size > 15
			puts "Board must not be greater than 15"
		else
			@num_guesses = 0
			@num_ships = 0
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

	# Guess a point
	def fire_missle x, y
		target = @grid.select { |card| card.x == x && card.y == y }
		if is_point_empty target
			target[0].miss = true
			puts "\nMiss."
		else
			target[0].hit = true
			puts "\nHIT!"
		end
		@num_guesses += 1
	end

	def get_hits
		num_hits = 0
		@grid.each do |card|
			if card.hit == true
				num_hits +=1
			end
		end
		return num_hits
	end

	def get_misses
		num_misses = 0
		@grid.each do |card|
			if card.miss == true
				num_misses +=1
			end
		end
		return num_misses
	end

	# Places 2 5x1 battleships on grid
	def add_ships num_new_ships
		new_total = @num_ships + num_new_ships
		until @num_ships == new_total
			# Randomly select starting coord & orientation
			x = rand(1...@size+1)
			y = rand(1...@size+1)
			orientation = rand(0..1) # 0 = horizonal, 1 = vertical

			# Check for obstructions
			if orientation == 0
				check_horizontal x, y
			elsif orientation == 1
				check_vertical x, y
			end
		end
	end

	def is_point_empty point
		# Check for edge
		if point[0] == nil
			# Point is outside gameboard
			return false
		elsif point[0].is_ship
			# Point is already occupied
			return false
		else
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
				break
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
		@num_ships += 1
	end

	# Lock in ship vertically from given point, called from place_ship
	def set_ship_vertical x, y
		0.upto 4 do |i|
			point = @grid.select { |card| card.x == x && card.y == (y + i) }
			point[0].is_ship = true
		end
		@num_ships += 1
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
				if point[0].hit
					print " #{"X".red.bold} |"
				elsif point[0].miss
					print " #{"o".cyan} |"
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
			puts "\n\n=== MAIN MENU ==="
			puts "Choose one of the following:"
			puts " [1] Start new game"
			puts " [0] Exit"
			print ">>> "
			input = gets.chomp.downcase
			if ["1"].include? input
				self.select input
				return input
				break
			elsif ["0", "quit"].include? input
				puts "Goodbye."
				$end_game = true
				break
			else
				puts "Invalid option."
			end
		end
	end

	def self.select input
		if input == "1"
			self.init_game
		end
	end

	def self.init_game
		puts "Let's play battleship!"
		self.new_game 10, 2
	end

	def self.new_game board_size, num_ships
		board = Board.new board_size
		board.add_ships num_ships
		board.print_board
		self.game_menu board
	end

	def self.game_menu board
		puts "\n\n=== IN-GAME ==="
		puts "Choose one of the following:"
		puts " [1] Begin guessing"
		puts " [0] Exit to main menu"
		print ">>> "
		input = gets.chomp
		if input == "0"
			self.display
		elsif input == "1"
			self.guess_point board
		end
	end

	def self.guess_point board
		puts "Enter \"quit\" at any time to return to game menu"
		self.guess_x board
	end

	def self.guess_x board
		while 1
			puts "\nEnter x-coordinate:"
			print ">>> "
			x = gets.chomp
			if ['1', '2', '3', '4', '5', '6', '7', '8', '9', '10', 'quit'].include? x
				if x == 'quit'
					self.display
					break
				else
					self.guess_y board, x.to_i
					break
				end
			else
				puts "Invalid x-coordinate. Try again..."
			end
		end
	end

	def self.guess_y board, x
		while 1
			puts "\nEnter y-coordinate:"
			print ">>> "
			y = gets.chomp
			if ['1', '2', '3', '4', '5', '6', '7', '8', '9', '10', 'quit'].include? y
				if y == 'quit'
					self.display
					break
				else
					board.fire_missle x, y.to_i
					self.print_score board
					break
				end
			else
				puts "Invalid y-coordinate. Try again..."
			end
		end
	end

	def self.print_score board
		puts "\n=== SCORE ==="
		if board.get_hits == board.num_ships * 5
			puts "VICTORY"
			board.print_board
		else
			puts "Guesses: #{board.num_guesses}   Hits: #{board.get_hits}   Misses: #{board.get_misses}"
			board.print_board
			self.guess_x board
		end
	end
end




$end_game = false

# Menu loop
loop do
	# Open menu
	input = Menu.display
	if $end_game == true
		break
	end
end

# binding.pry
# puts 'Done'
