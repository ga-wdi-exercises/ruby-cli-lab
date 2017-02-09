class Ship
  attr_accessor :starting_x, :starting_y, :coordinates_array

  def initialize
    @starting_x = (0..9).to_a.sample #get random x values between 0 and 9
    @starting_y = (0..9).to_a.sample #get random y value between 0 and 9
    @coordinates_array = []
  end

  def build_ship
    if @starting_x <= 5 #build ship horizontally
      i = 0
      5.times do |i|
        @coordinates_array << "#{@starting_x + i}, #{@starting_y}"
      end
    elsif @starting_x > 5 && @starting_y < 5 #build down
      i = 0
      5.times do |i|
        @coordinates_array << "#{@starting_x}, #{@starting_y + i}"
      end
    elsif @starting_x > 5 && @starting_y > 5 #build up
      i = 0
      5.times do |i|
        @coordinates_array << "#{@starting_x}, #{@starting_y - i}"
      end
    end
  end

  def is_hit? guess
    @coordinates_array.include? guess
  end

end
