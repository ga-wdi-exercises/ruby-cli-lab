require "pry"

require_relative "decks"
#User Interface______

$testDeck1 = Deck.new("testDeck1")
$testDeck2 = Deck.new("testDeck2")

testCard = Flashcard.new("England", "London")

$testDeck1.cards << testCard

class Menu
  def self.display
    puts "Hi! Ready for some Flash Card Flippin' Fun? Select an option below:"
    puts "1: Create a deck"
    puts "2: Create a card"
    puts "3: View cards"
    puts "4: Delete a card from a deck"
    puts "5: Exit"

    user_input = gets.chomp.to_i
    #____Create a new deck
      if user_input == 1
        puts "Please name your deck"
          deck_name = gets.chomp
            $newDeck = Deck.new(deck_name)
    #___Create a new card
      elsif user_input == 2
        puts "Please enter the front display of your card"
          front = gets.chomp
          puts "Please enter the back display of your card"
            back = gets.chomp

              new_card = Flashcard.new(front, back)
                new_card.put_deck new_card #Revisit self calling instance if time allows
      #___View a deck of cards
      elsif user_input ==3

        Deck.all.each {|deck| puts deck.name}
          puts "Indicate the deck that you'd like to view, with 1 indicating the first deck in the list and so on."
            card_view = (gets.chomp.to_i - 1)
              print Deck.all[card_view].cards
      #___Delete a card in a deck

      elsif user_input ==4
        print Deck.all.each {|deck| puts deck.name}
          puts "Indicate the deck from which you'd like to delete a card, with 1 indicating the first deck in the list and so on."
            deck_view = (gets.chomp.to_i - 1)
                Deck.all[deck_view].delete_cards

      elsif user_input == 5
        done == true
      else
      end
  end
end



#Allows user to exit the program
done = false
while done == false do
Menu.display
end



binding.pry


#delete
#flip
# add i







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
