require 'pry'

class Menu
  def self.display
    while 1
      puts "Please pick one of the following options:"
      puts "1 - Create New Flashcard"
      puts "2 - View my Flashcards"
      puts "3 - Edit a Flashcard"
      puts "4 - Delete a Flashcard"

      input = gets.chomp
      if ["1","2","3","4","5"].include? input
        self.select input
        break
      else
        puts "Invalid option."
      end
    end
  end
  def self.select number
    puts "You selected #{number}"
  end
end

Menu.display

class Flashcards
  attr_accessor :front, :back
  def initialize front, back
    @front = front
    @back = back
  end
end

def new_card front, back
    name = Flashcard.new(front, back)
   @cards << name
   end

class Deck
  attr_accessor :cards
  def initialize
    @cards = []
  end
end





binding.pry
puts "thanks for playing"
