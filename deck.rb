class Deck
  attr_accessor :cards_array
  def initialize
    @cards_array = []
  end
  def add_card(q, a)
    @cards_array << Flashcards.new(q, a)
  end
end
