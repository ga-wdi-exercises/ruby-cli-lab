class Grid
  attr_accessor :coordinates_array, :keys, :hash
  def initialize
    @x = (0..9).to_a
    @y = (0..9).to_a
    @coordinates_array = @x.product(@y)
    @keys = @coordinates_array.map { |coord| "#{coord.join(', ')}: #"}
    @hash = Hash[@keys.map { |i| i.split(": ") }]

    @ship_one_coordinates = []
    @ship_two_coordinates = []
  end

  def print_grid
    p "  0 1 2 3 4 5 6 7 8 9"
    row = 0
    @hash.values.each_slice(10) do |chunk|
      p row.to_s + " " + chunk.join(' ')
      row += 1
    end
  end

  def add_ship_one ship_one
    ship_one.coordinates.each do |ship_one_coord|
      @ship_one_coordinates << ship_one_coord
    end
  end

  def add_ship_two ship_two #ship two must be added after ship one for this to work
    ship_two.coordinates.each do |ship_two_coord|
      until !(@ship_one_coordinates.include? ship_two_coord) # if ship_coord is anywhere in ship_one coord, we have to make a new ship
        ship_two = Ship.new
        ship_two.build_ship
        self.add_ship_two ship_two #build a new ship
        break
      end
       #if it doesn't overlap with ship one at all, load up the coordinates and proceed as usual
      @ship_two_coordinates << ship_two_coord
    end
  end

  def add_hit guess_coordinates
    #location format is "0, 9"
    @hash[guess_coordinates] = "H"
    @hash[guess_coordinates]
  end

  def add_miss guess_coordinates
    @hash[guess_coordinates] = "M"
    @hash[guess_coordinates]
  end

  def ship_is_sunk? ship #take in a ship, and check it's coordinates in the hash
    #if the value of all the coordinates is H, the ship is sunk (doesn't include '#')
    check_array = []
    ship.coordinates.each do |ship_coord|
      check_array << @hash[ship_coord]
    end
    return !(check_array.include? '#')
  end


end
