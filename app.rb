class Flashcard
  attr_accessor :cardNum, :front, :back

  def initialize(cardNum, front, back)
    @cardNum = cardNum
    @front = front
    @back = back
  end

end


class Game
  @@counter = 1
  def initialize
    @cards = []
  end
  def create_flashcard
    puts "Please enter the information for the front of your flashcard"
    frontInfo = gets.chomp
    puts "Please enter the information for the back of your flashcard"
    backInfo = gets.chomp
    puts "Please enter the number #{@@counter}"
    cardNum = gets.chomp.to_i
    newCard = Flashcard.new(cardNum, frontInfo, backInfo)
    @@counter += 1
    @cards << newCard
  end
  def display_flashcards
     @cards.each do |card|
       puts "card number #{card.cardNum}, front: #{card.front}, back: #{card.back}"
     end
  end
  def edit_card
    @cards.each do |card|
      puts "card number #{card.cardNum}, front: #{card.front}, back: #{card.back}"
    end
    puts "Please enter the card number of the card you'd like to change"
      card_num = gets.chomp.to_i
    selected_card = @cards.find do |card|
      card.cardNum == card_num
    end
      if selected_card
        puts "Please change the information for the front of your card"
        newFront = gets.chomp
        puts "Please change the information for the back of your card"
        newBack = gets.chomp
        selected_card.front = newFront
        selected_card.back = newBack
        puts "Your card's front now says #{selected_card.front} and the back says #{selected_card.back}."
    else
      puts "no card found"
    end
  end
  end

class Menu
  @@game = Game.new
  def self.display
    while 1
      puts "Please choose one of the following:"
      puts "Enter 1 to create a new flashcard"
      puts "Enter 2 to view all flashcards"
      puts "Enter 3 to edit a flashcard"
      puts "Enter 4 to delete a flashcard"
      puts "Enter 5 to view score"
      input = gets.chomp
      if input == "1"
        @@game.create_flashcard
      elsif input == "2"
      @@game.display_flashcards
    elsif input == "3"
      @@game.edit_card
    end
    end
  end
end

Menu.display
