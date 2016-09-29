# require "pry"

class FlashCard
  attr_accessor :front, :back, :cards
  @@all = []
  def initialize front, back
    @front = front
    @back = back
    @cards = [["Na","Sodium"],["H", "Hydrogen"]]
    @cards << self
  end
end



puts "enter 1 to add card"
puts "Enter 2 to view all cards"
puts "Enter 3 to edit card"
puts "Enter 4 to delete card"
input = gets.chomp.to_i
if input == 1
    p "enter a front"
    front = gets.chomp
    p "enter a back"
    back = gets.chomp
    FlashCard.new(front,back)
    @cards.push(FlashCard.new(front,back))
    puts @cards


elsif input ==2
  p @cards
end


# binding.pry
# puts "asd"
