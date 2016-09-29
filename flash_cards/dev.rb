# Write Plan and breakdown
# need to create three classes
# Player
# Deck
# Flashcard
# The Player has a decks (collection of Decks) and in each Deck
# there are collections are cards (collection of Cards)

require 'pry'

class Flashcard
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

    def create_new_card front, back
        name = Flashcard.new(front, back)
        @cards << name
    end

    def delete_card
    end
end

class Player
    attr_reader :decks
    def initialize name
        @name = name
        @decks = []
    end

    def add_Deck deck
        @decks.push(deck)
    end
end

# test Player
mike = Player.new("Mike")
starwars = Deck.new
mike.add_Deck(starwars)
starwars.create_new_card("Yoda","A Jedi Master")

binding.pry
puts "done"