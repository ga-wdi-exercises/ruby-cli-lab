class Category
  attr_accessor :name, :cards
  def initialize name, cards = []
    @name = name
    @cards = cards
  end
  def addCard card
    @cards << card
  end
  def removeCard index
    @cards.delete_at index
  end
end
