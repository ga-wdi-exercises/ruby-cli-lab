require "pry"

class Menu
  def self.display
    puts "1: Create a deck"
    user_input = gets.chomp.to_i
      if user_input == 1
        puts "Please name your deck"
        deck_name = gets.chomp
        $newDeck = Deck.new(deck_name)
      else
      end
  end
end

Menu.display

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

$testDeck1 = Deck.new("testDeck1")
$testDeck2 = Deck.new("testDeck2")

#if a user selects 2, creates a flashcard
class Flashcard
  attr_accessor :front, :back
  def initialize front, back
    @front = front
    @back = back
  end
  def put_deck card
    Deck.all.each {|deck| puts deck.name}
    puts 'Please select a deck in which to store this card'
    user_input = (gets.chomp.to_i - 1)
    Deck.all[user_input].cards << card
  end
end

testCard = Flashcard.new("England", "London")

binding.pry









#####################Start quiz
#
# select a deck
#
# initiates loop through the deck
#
# option to flip card
#while loop with option to 'go back to menu'
#
# indicate whether know or dont know
#
# moves to next card
#
# #############Create a flashcard
#
# class Flashcard
#   attr_accessor :front, :back
#   def initialize front, back
#     @front = front
#     @back = back
#   end
#   def put_deck
#     puts 'Please select a deck to store this card'
#   end
# end
#
# Flashcard.new "Buenos Dias", "Good morning"
#
# Store the card in a deck
#
#
####################################View all cards
#
# select a deck
#
# displays all cards front
#
# enter key to flip
#
# #Edit a flashcard
#
# select a deck
#
# displays cards in a list
#
# select a key and it will delete that card
# (1..2)
#
####################################Delete a flashcard
#
# select a deck
#
# displays cards in a list
#
# select a key and it will delete that card
# (1..2)
#
########################################View score
# score stored in deck
#
# select a deck and can see score
# gold edition can see score for a particular card

####OLD CODE###

# class Deck
#   attr_accessor :name, :cards
#   @@all=[]
#
#   def initialize name
#     @name = name
#     @cards = []
#     @@all << self
#   end
#
#   def new_card front, back
#     @front = front
#     @back = back
#     @cards << self
#   end
#
#   def self.all
#     @@all
#   end
# end
#
# testDeck = Deck.new("testDeck")
# testDeck.new_card("England", "London")
