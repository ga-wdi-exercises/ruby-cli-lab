# require "pry"

class FlashCard
  attr_accessor :front, :back, :cards
  @@all = []

  def initialize front, back
    @front = front
    @back = back
    @cards = []
    @@all.push(self)
  end

  def add_card
    @cards.push(self)
  end

  def self.all
     @@all
end
end

card1 = FlashCard.new("Na", "Sodium")
card2 = FlashCard.new("H", "Hydrogen")


while 1
puts "enter 1 to add card"
puts "Enter 2 to view all cards"
puts "Enter 3 to edit card"
puts "Enter 4 to delete card"
puts "Enter 5 to exit"
input = gets.chomp.to_i
if input == 1
    p "enter a front"
    front = gets.chomp
    p "enter a back"
    back = gets.chomp
    p FlashCard.new(front,back)

elsif input ==2
     FlashCard.all.each do |card|
       puts card.front + "" + card.back

     end
elsif input == 5
  break

end
end
# elsif input == 5
#   FlashCard.all.each do |card|
#     puts





# binding.pry
# puts "asd"
