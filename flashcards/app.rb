require 'pry'

require_relative "cards"
#Adding Flashcard
class Card
  attr_accessor :front, :back
  @@deck = []

  def initialize(front,back)
    @front = front
    @back = back
    @@deck.push(self)
  end

  def self.deck
    @@deck
  end

end

hola = Card.new("Hola","Hello")
adios = Card.new("Adios","Goodbye")

#Flashcard Menu
class Menu
  def self.display
    while 1
      puts "Choose one of the following:"
      puts "1 - Create/Add Cards"
      puts "2 - View Cards"
      # puts "3 - Edit Cards"
      puts "4 - Delete Cards"
      # puts "5 - View Score"
      puts "6 - Quit"
      input = gets.chomp
      if input == "1"
        puts "Please type in the front of the card"
        front = gets.chomp
        puts "Please type in the back of the card"
        back = gets.chomp
        Card.new(front,back)
      elsif input == "2"
        puts "Your cards are #{Card.deck}"
      elsif input == "3"

      elsif input == "4"
        p Card.deck
        puts "Choose which card to delete. Note: the first card will be 0, followed 1 with the next card, and so forth"
        card = gets.chomp
        card_i = card.to_i
        deck = Card.deck
        deck.delete_at(card_i)
      elsif input == "5"

      elsif input == "6"
        puts "Goodbye"
        break
      else
        puts "Please try again"
      end
    end
  end
  def self.select number
    puts "You selected #{number}"
  end
end

Menu.display

binding.pry
puts "done"
