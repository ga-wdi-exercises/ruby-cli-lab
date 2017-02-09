

class Battleship
	attr_accessor :cords
	def initialize(cords = [])
		@cords = cords
	end


	def show_boat
		boat = []
		@length.times {|x| boat << "(B)"}
		boat

	end
	
end


# row_boat = Battleship.new(3)
# p row_boat.show_boat
