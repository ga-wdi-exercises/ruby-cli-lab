# require_relative "models/ship"
require_relative "models/gameboard"
# require_relative "player"

# gameboard.game_array = []
# 100.times do
#   gameboard.game_array << '?'
# end
# gameboard.game_array[34] = "X"
gameboard = GameBoard.new
gameboard.create_array
gameboard.update_array

game_board = ["------------------------",
"|  1 2 3 4 5 6 7 8 9 10|",
"|A #{gameboard.game_array[0]} #{gameboard.game_array[1]} #{gameboard.game_array[2]} #{gameboard.game_array[3]} #{gameboard.game_array[4]} #{gameboard.game_array[5]} #{gameboard.game_array[6]} #{gameboard.game_array[7]} #{gameboard.game_array[8]} #{gameboard.game_array[9]} |",
"|B #{gameboard.game_array[10]} #{gameboard.game_array[11]} #{gameboard.game_array[12]} #{gameboard.game_array[13]} #{gameboard.game_array[14]} #{gameboard.game_array[15]} #{gameboard.game_array[16]} #{gameboard.game_array[17]} #{gameboard.game_array[18]} #{gameboard.game_array[19]} |",
"|C #{gameboard.game_array[20]} #{gameboard.game_array[21]} #{gameboard.game_array[22]} #{gameboard.game_array[23]} #{gameboard.game_array[24]} #{gameboard.game_array[25]} #{gameboard.game_array[26]} #{gameboard.game_array[27]} #{gameboard.game_array[28]} #{gameboard.game_array[29]} |",
"|D #{gameboard.game_array[30]} #{gameboard.game_array[31]} #{gameboard.game_array[32]} #{gameboard.game_array[33]} #{gameboard.game_array[34]} #{gameboard.game_array[35]} #{gameboard.game_array[36]} #{gameboard.game_array[37]} #{gameboard.game_array[38]} #{gameboard.game_array[39]} |",
"|E #{gameboard.game_array[40]} #{gameboard.game_array[41]} #{gameboard.game_array[42]} #{gameboard.game_array[43]} #{gameboard.game_array[44]} #{gameboard.game_array[45]} #{gameboard.game_array[46]} #{gameboard.game_array[47]} #{gameboard.game_array[48]} #{gameboard.game_array[49]} |",
"|F #{gameboard.game_array[50]} #{gameboard.game_array[51]} #{gameboard.game_array[52]} #{gameboard.game_array[53]} #{gameboard.game_array[54]} #{gameboard.game_array[55]} #{gameboard.game_array[56]} #{gameboard.game_array[57]} #{gameboard.game_array[58]} #{gameboard.game_array[59]} |",
"|G #{gameboard.game_array[60]} #{gameboard.game_array[61]} #{gameboard.game_array[62]} #{gameboard.game_array[63]} #{gameboard.game_array[64]} #{gameboard.game_array[65]} #{gameboard.game_array[66]} #{gameboard.game_array[67]} #{gameboard.game_array[68]} #{gameboard.game_array[69]} |",
"|H #{gameboard.game_array[70]} #{gameboard.game_array[71]} #{gameboard.game_array[72]} #{gameboard.game_array[73]} #{gameboard.game_array[74]} #{gameboard.game_array[75]} #{gameboard.game_array[76]} #{gameboard.game_array[77]} #{gameboard.game_array[78]} #{gameboard.game_array[79]} |",
"|I #{gameboard.game_array[80]} #{gameboard.game_array[81]} #{gameboard.game_array[82]} #{gameboard.game_array[83]} #{gameboard.game_array[84]} #{gameboard.game_array[85]} #{gameboard.game_array[86]} #{gameboard.game_array[87]} #{gameboard.game_array[88]} #{gameboard.game_array[89]} |",
"|J #{gameboard.game_array[90]} #{gameboard.game_array[91]} #{gameboard.game_array[92]} #{gameboard.game_array[93]} #{gameboard.game_array[94]} #{gameboard.game_array[95]} #{gameboard.game_array[96]} #{gameboard.game_array[97]} #{gameboard.game_array[98]} #{gameboard.game_array[99]} |",
"------------------------"]

game_board.each{|x| puts x}
