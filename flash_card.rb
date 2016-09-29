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

class Flashcard
  attr_accessor :front, :back
  def initialize front, back
    @front = front
    @back = back
  end
end

def card_collection(hash.txt)
  hash_values = self.class.load_hash(hash.txt)
  @collection.insert_many(hash)
end

def initialize
  @collection = self.class.collection
end

Flashcard.new "Buenos Dias", "Good morning"





binding.pry
puts "thanks for playing"
