require 'pry'

class Game

  deck = []

  deck.push(Flashcard.new "1", "1")
  deck.push(Flashcard.new "1", "1")
  deck.push(Flashcard.new "1", "1")
  deck.push(Flashcard.new "1", "1")
  deck.push(Flashcard.new "1", "1")
  deck.push(Flashcard.new "2", "2")
  deck.push(Flashcard.new "2", "2")
  deck.push(Flashcard.new "2", "2")
  deck.push(Flashcard.new "2", "2")
  deck.push(Flashcard.new "2", "2")
  deck.push(Flashcard.new "2", "2")
  deck.push(Flashcard.new "3", "3")
  deck.push(Flashcard.new "3", "3")
  deck.push(Flashcard.new "3", "3")
  deck.push(Flashcard.new "3", "3")
  deck.push(Flashcard.new "3", "3")
  deck.push(Flashcard.new "3", "3")
  deck.push(Flashcard.new "3", "3")
  deck.push(Flashcard.new "4", "4")
  deck.push(Flashcard.new "4", "4")
  deck.push(Flashcard.new "4", "4")
  deck.push(Flashcard.new "4", "4")
  deck.push(Flashcard.new "4", "4")
  deck.push(Flashcard.new "4", "4")
  deck.push(Flashcard.new "4", "4")

  def initialize()
      @game_deck = deck.scramble
  end

  def show_cards
    for Flashcard in game_deck do
    puts Flashcard
    end
  end

  def delete_card
    show_cards
    puts 'Select the index you would like to delete'
    input = gets.chomp
    game_deck.delete_at(input)
  end

  def edit_card
    show_cards
    puts 'Select the index you would like to edit'
    input = gets.chomp
    card = game_deck[input]

    puts'enter the new information for the front of the card'
    front = gets.chomp

    puts'enter the new information for the back of the card'
    back = gets.chomp

    card.front  = front
    card.back = back
  end

end


class Menu
  //create a game
  def self.display
    while 1
      puts "Choose one of the following:"
      puts "1 - Play Game"
      puts "2 - View All Cards"
      puts "3 - Edit Card"
      puts "4 - Delete Card"
      puts "5 - View Score"
      input = gets.chomp

      if ["1","2","3","4", "5"].include? input
        self.select input
        break
      else
        puts "Invalid option."
      end
    end
  end

  def self.select number
    if number == 1
      
    elsif number == 2

    elsif number == 3

    elsif number == 4

    elsif number == 5

    end
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


puts 'end of code'
