require "pry"


class FlashCards
  attr_accessor :front, :back
  @@cards = []

  def initialize(front, back)
    @@cards.push self
    @front = front
    @back = back
  end

  def self.all
    @@cards
  end


end

while 1
  puts "Welcome to the game"
  puts "Enter 1 to add card"
  puts "Enter 2 to view all cards"
  puts "Enter 3 to edit card"
  puts "Enter 4 to delete card"
  puts "Enter 5 to exit"
  input = gets.chomp

  if input == "1"
    puts "Enter a front card value"
    input_front = gets.chomp
    puts "Enter a back card value"
    input_back = gets.chomp
    puts FlashCards.new(input_front,input_back)
  elsif input == "2"
    puts @@all

  elsif input == "3"

  elsif input == "4"

  elsif input == "5"
    break
  else input != ["1","2","3","4","5"]
    puts "Try again"
    break
  end

end




binding.pry
