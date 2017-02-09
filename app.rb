require "pry"

# Flashcard board
cardlist = []
card = []
cardlist.product(card)

# Game welcome
puts "Welcome to Gametime"

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
      puts "#{card}"
    cardlist  << {front:front, back:back}
    index +=1
  end
  end

# view all flashcards
  def print_details
    puts "cardlist: #{@front}"
  end

end


card1 = Flashcards.new("What is the Capital of Guyana?", "Georgetown")
card2 = Flashcards.new("Who was the 44th President of the USA?", "Barack Obama")






binding.pry
