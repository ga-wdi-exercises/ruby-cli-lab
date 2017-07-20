# require_relative "models/ship"
# require_relative "models/gameboard"
# require_relative "player"
# require_relative "app"

# class GameBoard
  # attr_reader :game_array, :ship_points, :hits, :misses

  # def initialize
  #   @game_array = []
  #   @ship_points = nil
  #   @hits = [12, 14, 27, 87, 20]
  #   @misses = [75, 24, 93, 34]
  # end
  game_array = []

  def create_game_array
    100.times do
      game_array.push('?')
    end

  # def update_array
  #   hits.each{ |x| game_array[x] = 'X'}
  #   misses.each{ |x| game_array[x] = 'O'}
  # end

  game_board = ["------------------------",
  "|  1 2 3 4 5 6 7 8 9 10|",
  "|A #{game_array[0]} #{game_array[1]} #{game_array[2]} #{game_array[3]} #{game_array[4]} #{game_array[5]} #{game_array[6]} #{game_array[7]} #{game_array[8]} #{game_array[9]} |",
  "|B #{game_array[10]} #{game_array[11]} #{game_array[12]} #{game_array[13]} #{game_array[14]} #{game_array[15]} #{game_array[16]} #{game_array[17]} #{game_array[18]} #{game_array[19]} |",
  "|C #{game_array[20]} #{game_array[21]} #{game_array[22]} #{game_array[23]} #{game_array[24]} #{game_array[25]} #{game_array[26]} #{game_array[27]} #{game_array[28]} #{game_array[29]} |",
  "|D #{game_array[30]} #{game_array[31]} #{game_array[32]} #{game_array[33]} #{game_array[34]} #{game_array[35]} #{game_array[36]} #{game_array[37]} #{game_array[38]} #{game_array[39]} |",
  "|E #{game_array[40]} #{game_array[41]} #{game_array[42]} #{game_array[43]} #{game_array[44]} #{game_array[45]} #{game_array[46]} #{game_array[47]} #{game_array[48]} #{game_array[49]} |",
  "|F #{game_array[50]} #{game_array[51]} #{game_array[52]} #{game_array[53]} #{game_array[54]} #{game_array[55]} #{game_array[56]} #{game_array[57]} #{game_array[58]} #{game_array[59]} |",
  "|G #{game_array[60]} #{game_array[61]} #{game_array[62]} #{game_array[63]} #{game_array[64]} #{game_array[65]} #{game_array[66]} #{game_array[67]} #{game_array[68]} #{game_array[69]} |",
  "|H #{game_array[70]} #{game_array[71]} #{game_array[72]} #{game_array[73]} #{game_array[74]} #{game_array[75]} #{game_array[76]} #{game_array[77]} #{game_array[78]} #{game_array[79]} |",
  "|I #{game_array[80]} #{game_array[81]} #{game_array[82]} #{game_array[83]} #{game_array[84]} #{game_array[85]} #{game_array[86]} #{game_array[87]} #{game_array[88]} #{game_array[89]} |",
  "|J #{game_array[90]} #{game_array[91]} #{game_array[92]} #{game_array[93]} #{game_array[94]} #{game_array[95]} #{game_array[96]} #{game_array[97]} #{game_array[98]} #{game_array[99]} |",
  "------------------------"]

def print_game_board
  create_game_array
  game_board.each{|x| puts x}
  hits.each{ |x| game_array[x] = 'X'}
  misses.each{ |x| game_array[x] = 'O'}
end
