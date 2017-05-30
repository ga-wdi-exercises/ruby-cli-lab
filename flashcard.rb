require 'pry'
module All
  class Flashcards
    def initialize
      @decks = []
    end
    def << deck
      @decks << deck
    end
    def play
      display_decks
      puts "Pick a deck: "
      deck = get_deck
      deck.play
    end
    def display_decks
      @decks.each { |deck| puts deck.name }
    end
    def get_deck
      name = gets.chomp
      @decks.detect { |deck| deck.name == name }
    end
  end

  class Card
    attr_accessor :front, :back

    def initialize(front,back)
      @front = front
      @back = back
    end
    def correct? guess
      guess == @back
    end
    def play
      puts "#{front} > "
      guess = gets.chomp
      if correct? guess
        puts "correct"
      else
        puts "Incorrect. The answer was #{back}"
      end
    end
  end



  class Deck
    attr_reader :cards, :name

    def initialize name
      @name = name
      @cards = []
    end
    def << card
      @cards << card
    end
    def shuffle
      @cards.shuffle!
    end
    def play
      shuffle
      @cards.each(&:play)
      puts "Thankyou for playing! Type play to play agian."
    end
  end
end

card1 = All::Card.new("cat", "meow")
card2 = All::Card.new("dog", "woof")
card3 = All::Card.new("pig", "oink")



deck = All::Deck.new("sounds")
deck << card1
deck << card2
deck << card3
act = All::Flashcards.new
act << deck

act.play





binding.pry
puts "The End"
