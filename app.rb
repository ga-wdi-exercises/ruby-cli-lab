require "pry"

# Flashcard board
cardlist = []
card = []
cardlist.product(card)

class Flashcards
  attr_accessor :front, :back

  def initialize(front, back)
    @front = front
    @back = back
  end

# prompt user to create cards
  def card
    index = 0
    loop do
      puts "Welcome, create a #{card}"
    cardlist  << {front:front, back:back}
    index +=1
  end
  end

end









binding.pry
