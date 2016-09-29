#if a user selects 1, creates a deck

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
end



#if a user selects 2, creates a flashcard
class Flashcard
  attr_accessor :front, :back
  def initialize front, back
    @front = front
    @back = back
  end
  def put_deck card
    Deck.all.each {|deck| puts deck.name}
    puts 'Please select a deck in which to store this card' #user has to input a number according to list of appearance. Need to clarify in UI
    user_input = (gets.chomp.to_i - 1)
    Deck.all[user_input].cards << card
  end
end

testCard = Flashcard.new("England", "London")
