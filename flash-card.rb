#require "pry"
class Flashcard
  attr_accessor :front, :back
  def initialize front, back
    @front = front
    @back = back
  end
end

class Deck
  attr_accessor :cards
  def initialize name
    @name = name
    @cards = []
  end
end

class NewFlashcard
  attr_accessor :front, :back
  @front = front
  @back = back
end
puts "Enter front of card"
front = gets.chomp
puts "Enter back of card"
back = gets.chomp
new_card = Flashcard.new front, back
new_card.cards <<  Deck.new "numbers"
numbers.cards << Flashcard.new("uno",1)
#p new_card
=begin
Deck.new()numbers =
#p new_card
class RenameFlashcard
  attr_accessor :front, :back
  @front = front
  @back = back
end

end
