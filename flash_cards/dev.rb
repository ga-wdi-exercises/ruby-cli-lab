# Write Plan and breakdown
# need to create three classes
# Player
# Deck
# Flashcard
# The Player has a decks (collection of Decks) and in each Deck
# there are collections are cards (collection of Cards)

require 'pry'

class Player
    def initialize name
        @name = name
        @decks = []
    end

    def add_Deck deck_name
        @decks.push(deck_name: deck_name)
    end
end

# test Player
mike = Player.new("Mike")

class Flashcard
    attr_accessor :front, :back
    def initialize front, back
        @front = front
        @back = back 
    end
    
    # methods to view / read
    def read_front
        puts @front
    end

    def read_back
        puts @back
    end

    def view
        puts "Front: #{@front} Back: #{@back}"
    end

    def edit front
        @front = front
    end

    def edit back
        @back = back
    end
end

class Deck
    attr_accessor :cards
    def initialize
        cards = []
    end

    # methods to add delete cards from deck
    def add_card name
        name.cards.push()
    end

    def delete_card
    end
end

binding.pry
puts "done"