require "pry"

class Battleship
  attr_accessor :locations
  @@ships = []

  def initialize
    @starting_location = [rand(10),rand(10)]
    @orientation = rand(2)
    while !Battleship.isValid(@starting_location,@orientation)
      @starting_location = [rand(10),rand(10)]
      @orientation = rand(2)
    end
    @locations = Battleship.generate_map(@starting_location,@orientation)
    @@ships << self
  end

  def self.generate_map(starting_location, orientation)
    if orientation == 0
      # puts "0"
      return 5.times.map{|x| [starting_location[0]+x, starting_location[1]]}
    else
      # puts "1"
      return 5.times.map{|x| [starting_location[0], starting_location[1]+x]}
    end
  end
  def self.isValid(starting_location,orientation)
    #check if the battleship chosen is valid
    # puts "is valid check #{starting_location} #{orientation}"
    if starting_location[orientation] < 7 #can it even be placed on the board
      if @@ships.length > 0 #there does exist a ship
          # puts "colision #{(Battleship.generate_map(starting_location,orientation)-@@ships[0].locations).length == 5}"
        return (Battleship.generate_map(starting_location,orientation)-@@ships[0].locations).length == 5
      else
        return true
      end
    end
    return false
  end
  def self.all
    @@ships
  end
  def self.reset
    @@ships == []
  end
end

class Board
  # @battleships=[]
  attr_reader :battleships, :playingspace

  def add_battleship(battleship = Battleship.new())
    @battleships << battleship
  end
  def initialize
    @battleships=[]
    @playingspace= 10.times.map{10.times.map{"-"}}
    self.add_battleship()
    self.add_battleship()
    self.add_battleship()
    self.add_battleship()
    self.add_battleship()
    self.play()
  end
  def print_board
    puts "        1  2  3  4  5  6  7  8  9  0 "
    puts "      ================================"
    puts " A  ||  #{@playingspace[0].join('  ')}  ||"
    puts " B  ||  #{@playingspace[1].join('  ')}  ||"
    puts " C  ||  #{@playingspace[2].join('  ')}  ||"
    puts " D  ||  #{@playingspace[3].join('  ')}  ||"
    puts " E  ||  #{@playingspace[4].join('  ')}  ||"
    puts " F  ||  #{@playingspace[5].join('  ')}  ||"
    puts " G  ||  #{@playingspace[6].join('  ')}  ||"
    puts " H  ||  #{@playingspace[7].join('  ')}  ||"
    puts " I  ||  #{@playingspace[8].join('  ')}  ||"
    puts " J  ||  #{@playingspace[9].join('  ')}  ||"
    puts "      ================================"
  end
  def play
    # puts "bships #{@battleships.map{|x| x.locations}}"
    puts "WELCOME TO BATTLESHIP, WHERE SKILL DOESN'T MATTER"
    puts "WOULD YOU LIKE TO PLAY A GAME?"
    this_literally_doesnt_matter = gets.chomp
    puts "IRRELEVANT, THIS IS A TIME OF WAR, YOU HAVE BEEN DRAFTED"
    x=0
    while x == 0 do
      self.print_board
      puts "WHERE WOULD YOU LIKE TO ATTACK? ATTACK! [ex: A1]"
      coordinates = gets.chomp.split("")
      coordinates[0] = "abcdefghij".index(coordinates[0].downcase)
      coordinates[1] = coordinates[1].to_i
      if is_hit(coordinates)
        puts "HIT! YOU'VE HIT A BATTLESHIP"
        @playingspace[coordinates[0].to_i][coordinates[1].to_i-1] = "X"
      else #miss
        puts "MISS! YOU INCOMPETENT FOOL!"
        @playingspace[coordinates[0].to_i][coordinates[1].to_i-1] = "O"
      end
    end
  end
  def is_hit(coordinate)
    # puts "#{coordinate}"
    # puts "#{@battleships.map{|x| x.locations}}"
    @battleships.any?{ |each_ship| each_ship.locations.include? coordinate }
  end
  def continue
  end

  def reset
    @battleships = []
    @playingspace= 10.times.map{10.times.map{"-"}}
    Battleship.reset
    self.add_battleship()
    self.add_battleship()
  end
end

game = Board.new


binding.pry
