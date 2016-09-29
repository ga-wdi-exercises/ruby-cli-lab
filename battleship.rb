require 'pry'

# Coordinate class
class Coordinate
	attr_accessor :x, :y

	def initialize x, y
		@x = x
		@y = y
	end
end

# Game Board class, 10x10 grid, array holding coordinates
class Board
	attr_accessor :grid, :size

	def initialize size
		@size = size
		@grid = []
		(1..size).each do |x|
			(1..size).each do |y|
				c = Coordinate.new x, y
				@grid << c
			end
		end
	end

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
