 require 'pry'
class Flashcard
  attr_accessor :front, :back
  def initialize front, back
    @front = front
    @back = back
  end
  def name= new_name
    @name = new_name
  end
end

class Deck
	attr_accessor :cards
	def initialize
		@cards = []
	end
end

class Menu
  def self.display
    while 1
      puts "Choose one of the following:"
      puts "1 - see deck"
      puts "2 - Option 2"
      puts "3 - Option 3"
      input = gets.chomp
      if ["1","2","3"].include? input
        .select input
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


d = Deck.new
d.cards.push(
card1 =  Flashcard.new("what's up", "nothing"),
card2 =  Flashcard.new("what's down", "me"),
)

#
#
# cards = []
# puts "Enter a Question:"
# front = gets.chomp
# cards.push(front)
# if cards.length <=1
#   puts "Enter the answer:"
#   back = gets.chomp
#   cards.push(back)
#
# end
#
# def add_card(card)
#   cards << (card)
# end
#
# def delete_card(card)
#   cards.delete(front)
# end
#




binding.pry
puts "The End"
