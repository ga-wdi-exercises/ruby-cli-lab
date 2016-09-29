require 'pry'

# class Menu
#   def self_display
#     while 1
#       puts "Choose one of the following:"
#       puts "1 - Option 1"
#       puts "2 - Option 2"
#       puts "3 - Option 3"
#       input = gets.chomp
#       if ["1", "2", "3"].include? input
#         self.select input
#         break
#       else
#         puts "Invalid option"
#       end
#     end
#   end
#   def self_select number
#     puts "You selected #{number}"
#   end
# end
#
# Menu.display
class Flashcard
  attr_accessor :front, :back, :flashcards_box
  @@current_card = []


  def self.view_all_cards
    @@current_card
  end
  def initialize front, back
    @front = front
    @back = back
    @flashcards_box = []
    @@current_card << self
  end
  def add_card new_card, quantity
    @flashcards_box << {name: new_card, quantity: quantity}
  end

  def edit_card front, back
    @front = front
    @back = back
  end

  def delete_card
    @flashcards_box.pop
  end
end

card1 = Flashcard.new "Moldova", "It's been a good day in Chisinau!"
card2 = Flashcard.new "Romania", "It's been raining in  Bucharest!"
card3 = Flashcard.new "USA", "DC"
card4 = Flashcard.new "District of Columbia", "The Capital!"














binding.pry

puts 'end of game'
