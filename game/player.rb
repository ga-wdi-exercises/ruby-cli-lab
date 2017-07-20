class Player

  attr_reader :name

  ################################################
  # initialize
  #
  # initializes a player with a name
  #
  # name - the name of the player
  ###############################################
  def initialize(name)
    @name = name
  end

  ################################################
  # get_move
  #
  # gets a move from the player and returns an array
  #
  # return [row,  column]
  ###############################################
  def get_move
    puts "Hi #{@name}! Enter your next move"

    print "Enter Row [starting at 0]: "
    input = gets.chomp.to_i
    if input == -1
      return -1
    end
    row = input.to_i
    print "Enter Column [starting at 0]: "
    input = gets.chomp.to_i
    if input ==  -1
      return -1
    end
    column = input.to_i
    return [row, column]
  end

end
