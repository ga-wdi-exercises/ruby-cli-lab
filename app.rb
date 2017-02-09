require "pry"
require "matrix"




# with column in position 0 for guesses
  # board = [1,'#','#','#',"#","#",'#','#','#',"#","#"]
  # # rows = [1,' ',2,' ',3,' ',4,' ',5,' ',6,' ',7,' ',8,' ',9,' ',10]
  # # columns = ['A','B','C','D','F','G','H','I','J']
  # field = board.map{|e| board}
  # field.partition{|i| i.to_s.to_i ==i }


# class Grid
#   attr_accessor :x_id, :y_id
#
#   def initialize(x,y)
#
#
#   end
#
# end

rows, cols = ['#','#','#',"#","#",'#','#','#',"#","#"],10
grid = Array.new(rows) { Array.new(cols) }
def fill(grid)
  grid.map!{|e| e ='#'}
end

binding.pry
