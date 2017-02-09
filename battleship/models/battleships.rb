class Battleship
	def initialize(length, positions = [])
		@length = length
		@positions = positions
	end

	def show_boat
		boat = []
		@length.times {|x| boat << "(B)"}
		boat

	end
	
end


# row_boat = Battleship.new(3)
# p row_boat.show_boat
