def initialize_board(n, space)
	board = []
	n.times do |row_piece|
		row = []
		n.times {|col_piece| row << space }
		board << row
	end
	board
	
end



def show_board(board)
	board.map! do |arr| 
		arr.join + "\n"
	end
	board.each {|row| puts row}

end


# boardst = initialize_board(5, '(~)')
# show_board(boardst)
# def show_board(board)
# 	board.map! do |arr| 
# 		arr.join + "\n"
# 	end
# 	board.each {|row| puts row}
# end


# board = initialize_board(6, "(~)")
# p '-----'

# board_arr << board
# puts board_arr
# puts board

