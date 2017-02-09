require 'pry'

class FlashCard
    attr_accessor :front, :back

    def initialize(front, back)
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
deck.cards.push do
    FlashCard.new('front', 'back')
end

class MainMenu
    def self.disply
        puts 'Welcome to flashcards'

        loop do
            puts 'What do you want to do?'
            puts '1 - Create new flashcards'
            puts '2 - View all flashcards'
            puts '3 - Edit flashcards'
            puts '4 - Delete flashcard'
            puts '5 - View score'
            input = gets.chomp
            if %w(1 2 3 4 5).include? input
                select input
                break
            else
                puts 'Choose a valid option'
            end
        end
        def self.select(number)
            puts "You selected #{number}"
            if number == '1'
                puts 'Create a new card'
                Create.new
            end
            if number == '2'
                puts 'View all cards'
                FlashCard.new
            end
            if number == '3'
                puts 'Edit the cards'
                Edit.new
            end
            if number == '4'
                puts 'Delete cards'
                Delete.new
            end
            if number == '5'
                puts 'View score'
                View.new
            end
        end
    end
end

MainMenu.display

class Create < FlashCard
  def initialize cards
    @cards = card
  end
  def add_card
    @card << card
  end

end

binding.pry
