require "pry"


      while 1
        puts "Enter 1 to add card"
        puts "Enter 2 to view all cards"
        puts "Enter 3 to edit card"
        puts "Enter 4 to delete card"
        puts "Enter 5 to exit"
        input = gets.chomp

      if input == "1"
        puts "Enter a front card value"
        input.gets.chomp
        puts "Enter a back card value"
        input.gets.chomp
        puts Flash_Cards.new(front,back)
      elsif input == "2"

      elsif input == "3"

      elsif input == "4"

      elsif input == "5"
        
      else input != ["1","2","3","4","5"]
        break
  end
end


class Flash_Cards
  attr_accessor :front, :back,
  def initialize(front_index, back_index)
    @front = front_index
    @back = back_index
    @cards = []
    @score = 0
  end
end






binding pry
