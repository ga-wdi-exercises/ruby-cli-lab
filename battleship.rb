require 'pry'

$letters = ("A".."J").to_a

$numbers = (1..10).to_a

$ocean = $letters.product($numbers)

$hr_ocean = $ocean.select {|location| location[0] < "G"}

$hl_ocean = $ocean.select {|location| location[0] > "D"}

$vd_ocean = $ocean.select {|location| location[1] < 7}

$vu_ocean = $ocean.select {|location| location[1] > 4}

$all_oceans = [$hr_ocean, $hl_ocean, $vd_ocean, $vu_ocean]

$ship1_location = []

$ship2_location = []

$locations = []

$hits = []

class Ocean

  def initialize
  end

  def place_ship1
    direction = $all_oceans.shuffle
    first_start = direction[0].shuffle
    if direction[0] == $hr_ocean
      $ship1_location = [first_start[0],$ocean[$ocean.index(first_start[0])+10], $ocean[$ocean.index(first_start[0])+20], $ocean[$ocean.index(first_start[0])+30], $ocean[$ocean.index(first_start[0])+40]]
    elsif direction[0] == $hl_ocean
      $ship1_location = [first_start[0],$ocean[$ocean.index(first_start[0])-10], $ocean[$ocean.index(first_start[0])-20], $ocean[$ocean.index(first_start[0])-30], $ocean[$ocean.index(first_start[0])-40]]
    elsif direction[0] == $vd_ocean
      $ship1_location = [first_start[0],$ocean[$ocean.index(first_start[0])+1], $ocean[$ocean.index(first_start[0])+2], $ocean[$ocean.index(first_start[0])+3], $ocean[$ocean.index(first_start[0])+4]]
    else $ship1_location = [first_start[0],$ocean[$ocean.index(first_start[0])-1], $ocean[$ocean.index(first_start[0])-2], $ocean[$ocean.index(first_start[0])-3], $ocean[$ocean.index(first_start[0])-4]]
    end
    self.place_ship2
  end

  def place_ship2
    direction = $all_oceans.shuffle
    first_start = direction[0].shuffle
    if direction[0] == $hr_ocean
      $ship2_location = [first_start[0],$ocean[$ocean.index(first_start[0])+10], $ocean[$ocean.index(first_start[0])+20], $ocean[$ocean.index(first_start[0])+30], $ocean[$ocean.index(first_start[0])+40]]
    elsif direction[0] == $hl_ocean
      $ship2_location = [first_start[0],$ocean[$ocean.index(first_start[0])-10], $ocean[$ocean.index(first_start[0])-20], $ocean[$ocean.index(first_start[0])-30], $ocean[$ocean.index(first_start[0])-40]]
    elsif direction[0] == $vd_ocean
      $ship2_location = [first_start[0],$ocean[$ocean.index(first_start[0])+1], $ocean[$ocean.index(first_start[0])+2], $ocean[$ocean.index(first_start[0])+3], $ocean[$ocean.index(first_start[0])+4]]
    else $ship2_location = [first_start[0],$ocean[$ocean.index(first_start[0])-1], $ocean[$ocean.index(first_start[0])-2], $ocean[$ocean.index(first_start[0])-3], $ocean[$ocean.index(first_start[0])-4]]
    end
    intersection = $ship1_location & $ship2_location
    if intersection != []
      $ship2_location = []
      self.place_ship2
    end
    puts $ship1_location
    puts $ship2_location
    end
  end

class Player

  def initialize
    p "Welcome to Battleship! Enter your name to start a game => "
    name = gets.chomp
    @name = name
    self.play
  end

  def play
    ocean = Ocean.new
    ocean.place_ship1
    self.fire_torpedo
  end

  def fire_torpedo
    p "Enter a letter between 'A' and 'J' and a number between '1' and '10' separated by a hyphen '-' to fire a torpedo (e.g. 'c-5') =>"
    torpedo = gets.chomp.upcase.split("-")
    if torpedo.length != 2 || torpedo[0].to_i || torpedo[1].to_i > 10
      p "#{torpedo} is an invalid entry - please try again"
      return self.fire_torpedo
    elsif $locations.find {|location| location == torpedo} == true
      p "You've already tried #{torpedo}, please enter an alternate location to attack =>"
      return self.fire_torpedo
    else $locations << torpedo
    end
    if $ship1_location.find {|hit| hit == torpedo} == true || $ship2_location.find {|hit| hit == torpedo} == true
      $hits << torpedo
    end
    if $hits.length == 10
      exit "You've sunk both their battleships!"
    else self.fire_torpedo
    end
  end
end

ian = Player.new






binding.pry
puts 'done'
