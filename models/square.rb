class Square

  @@all = []
  @@count = 0

  attr_reader :x, :y, :boat_id

  def initialize x, y
    @@count += 1
    @id = @@count
    @x = x
    @y = y
    @label = nil
    @boat_id = nil
    @boat_index = nil
    @boat_character = nil
    @guessed = false
    set_label
    @@all << self
  end

  def status
    if isEmpty?
      status = @guessed ? "miss" : "empty"
    else
      status = @guessed ? "hit" : "boat"
    end
    status
  end

  def status_character
    if isEmpty?
      character = @guessed ? "O" : " "
    else
      character = @guessed ? "X" : @boat_character
    end
    character
  end

  # mode expects {show_boats: true|false}
  # empty: " ", hit: "X", miss: "o", boat: "<boat char>"
  def draw show_boats
    output = ""
    # add leading border if far left column
    if isLabel? && @x == 0
      output += "|"
    end
    # add leading space to all squares except labels with two digits
    if isLabel? && (@x >= 10 || @y >= 10)
      output += ""
    else
      output += " "
    end
    # put middle character
    if isLabel?
      output += label
    elsif show_boats == true
      output += status_character
    else
      output += status_character == @boat_character ? " " : status_character
    end
    # add trailing space and border
    if true
      output += " |"
    end
    output
  end

  def isEmpty?
    @boat_id == nil ? true : false
  end

  def guess
    @guessed = true
  end

  def isLabel?
    @label == nil ? false : true
  end

  def addBoat id, index, character
    @boat_id = id
    @boat_index = index
    @boat_character = character
  end

  def set_label
    if @x == 0 && @y == 0
      @label = " "
    elsif @x == 0 || @y == 0
      @label = [@x,@y].max.to_s
    end
  end

  def self.all
    @@all
  end

  def self.count
    @@count
  end

  def self.row y
    @@all.select { |sq| sq.y == y }
  end

  def self.column x
    @@all.select { |sq| sq.x == x }
  end

  def self.get x, y
    @@all.select { |sq| sq.x == x && sq.y == y }
  end

end
