require "pry"

require_relative "data"
cards = data[:cards]

class Cards
  attr_accessor :card

  def initialize(category, card = [])
    @category = category
    @card = card
  end

  def add_question(question)
    @question << cards
  end
end



class Menu
  def self.display
    while 1
      puts "Choose one of the following:"
      puts "1 - View All Cards"
      puts "2 - Edit a Card"
      puts "3 - Create a New Card"
      puts "4 - Delete a Card"
      puts "5 - View Score" #The player should be able to see their score and how many cards/questions they got right.
      puts "9 - Quit Game"

      input = gets.chomp
      if ["1","2","3","4","5","9"].include? input
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




















binding.pry
