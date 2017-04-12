class Boat

  @@all = []
  @@count = 0

  attr_reader :name, :character, :sunk

  def initialize length
    @@count += 1
    @id = @@count
    @length = length
    @name = nil
    @character = nil
    @xy = [0,0]
    @hit_count = 0
    @sunk = false
    set_name
    @@all << self
  end

  def set_name
    if @length == 5
      @name = "Carrier"
      @character = "C"
    elsif @length == 4
      @name = "Battleship"
      @character = "B"
    elsif @length == 3
      @name = "Submarine"
      @character = "s"
    else
      @name = "Destroyer"
      @character = "d"
    end
  end

  def hit
    @hit_count += 1
    if @hit_count == @length
      @sunk = true
      puts "Bitch sunk my #{@name}!"
    end
  end

  def self.id id
    @@all.select { |b| b.id == id }
  end

  def self.all
    @@all
  end

  def self.count
    @@count
  end

end
