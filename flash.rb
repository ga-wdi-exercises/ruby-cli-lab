require "pry"

class Menu
  puts "Welcome to FlashCards!"
  puts "Please indicated what you would like to do:"
  puts "Create Cards -- 1"
  puts "View Cards-- 2"
  puts "Edit Cards --3"
  puts "Play FlashCards --4"

  answer = gets.chomp
    if answer == "1"
      Card.display
    elsif answer == "2"
      # open class cards
      puts "view"
    elsif answer == "3"
        # open class cards
        puts "edit"
    elsif answer == "4"
        # open class cards
        puts "play "
    else
      puts "sorry, that is an invalid resopnse "
    end
end
# Menu.display

class Card < Menu

puts "You have selcted to create new flash cards. To create new cards, enter your questions to be displayed  on the front of the card and your answers to be displayed on the back. You will also want to set a catagory for each card as well "

  attr_accessor :category, :front, :back
  front = []
  back = []
  catagory = []

  def initialize
    @question= front
    @category = category
    @answer = back
    @@deck.push(self)
  end

  def set_catagory (catagory)
    puts "Please enter catagory of card to be created"
    cat = gets.chomp
    category << cat
  end

  def front (front)
    puts " Please enter the question to be displayed on the front of the flshcard"
    question = gets.chomp
    front << question
  end

  def back (back)
    puts "Please enter the answer to be displayed on the back of the flashcard"
    answer = gets.chomp
    back << answer
  end

    def create_card
      set_catagory
      front
      back
    end

  def self.get_deck
    return @@deck
  end
end


# class Menu
#   def self.display
#     while 1
#       puts "Choose one of the following:"
#       puts "1 - Option 1"
#       puts "2 - Option 2"
#       puts "3 - Option 3"
#       input = gets.chomp
#       if ["1","2","3"].include? input
#         self.select input
#         break
#       else
#         puts "Invalid option."
#       end
#     end
#   end
#   def self.select number
#     puts "You selected #{number}"
#   end
# end
#
# Menu.display







binding.pry
