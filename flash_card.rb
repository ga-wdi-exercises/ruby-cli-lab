require 'pry'

class FlashCard
attr_accessor :front, :back

def initialize front, back
  @front = front
  @back = back
end
end

class Deck
  attr_accessor :cards
  def initialize
    @cards = []
  end
end

deck = Deck.new
deck.cards.push{
  FlashCard.new("front","back")
}
