#FlashCards

require "pry"

class FlashCard
  attr_accessor :front, :back

  def initialize (front, back)
    @front = front
    @back = back

  end
end

while true
  puts "Welcome to Armenian Cards! "
  puts "Press 1 to add a card"
  puts "Press 2 to view the cards"
  answer = gets.chomp.to_i
  if answer == 1
    puts "What do you want the front to say?"
    front = gets.chomp
    puts "What do you want the back to say?"
    back = gets.chomp

    puts FlashCard.new(front, back)
  end
  break
end







card1 = FlashCard.new("Parev", "Hello")
card2 = FlashCard.new("Tzidesootyoon", "Goodbye")
card3 = FlashCard.new("Anoon", "Name")
card4 = FlashCard.new("Seghan", "Table")
card5 = FlashCard.new("Inknasharj", "Automobile")











binding.pry
