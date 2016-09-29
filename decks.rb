class Deck
  attr_accessor :name, :cards
  @@all=[]

  def initialize name
    @name = name
    @cards = []
    @@all << self
  end

  def self.all
    @@all
  end


  def delete_cards
    print self.cards
      puts "Indicate the card that you would like to delete, with 1 indicating the first card in the list and so on."
        deleteIndex = (gets.chomp.to_i - 1)
         self.cards.delete_at(deleteIndex)
  end
end



class Flashcard
  attr_accessor :front, :back, :full_card
  def initialize front, back
    @front = front
    @back = back
    @full_card = [front, back]
  end
  def put_deck card
    Deck.all.each {|deck| puts deck.name}
      puts "Please indicate a deck in which to store this card, with 1 indicating the first deck in the list and so on."
        user_input = (gets.chomp.to_i - 1)
          Deck.all[user_input].cards << card.full_card
  end
end
