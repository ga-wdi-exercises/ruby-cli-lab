class Player
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def get_move
    puts "Hi #{@name}! Enter your next move"
    print "Row: "
    row = gets.chomp.to_i
    print "Column: "
    column = gets.chomp.to_i
    return [row, column]
  end

end
