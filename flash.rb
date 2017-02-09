require "pry"

class Menu
  def self.display
    while 1 || 2 || 3 || 4
      puts "Welcome to FlashCards!"
      puts "Choose one of the following:"
      puts "1 - Create Cards 1"
      puts "2 - View Cards 2"
      puts "3 - Edit Cards 3"
      puts "4 - Play FlashCards 4"
      input = gets.chomp
      if ["1","2","3", "4"].include? input
        self.select input
        break
      else
        puts "Invalid option."
      end
    end
  end
  def self.select number
    puts "You selected #{number}"
    if number == 1
      Class.new
    elsif number == 2
      puts "2"
    elsif number == 3
      puts "3"
    elsif number == 4
      puts "4"
  end
end
end

Menu.display

class Card

puts "You have selcted to create new flash cards. To create new cards, enter your questions to be displayed  on the front of the card and your answers to be displayed on the back. You will also want to set a catagory for each card as well "

  attr_accessor :category, :question, :answer
  @@deck = []

  def initialize (question, answer, catagory)
    @question= question
    @category = catagory
    @answer = answer
    @@deck.push(self)
  end

  def self.get_deck
    return @@deck
  end

  def create_card (question, answer, catagory)
    Card.new
  end


end


binding.pry

# Question to ask Adrian: How do you
