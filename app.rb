class Flashcard
  attr_accessor :front, :back

  def initialize(front, back)
    @front = front
    @back = back
  end

end


class Game
  def initialize
    @cards = []
  end
  def create_flashcard
    puts "Please enter the information for the front of your flashcard"
    frontInfo = gets.chomp
    puts "Please enter the information for the back of your flashcard"
    backInfo = gets.chomp
    newCard = Flashcard.new(frontInfo, backInfo)
    @cards << newCard
    puts "#{@cards}"
  end
  def display_flashcards
    puts "#{@cards} * (" ")"
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
      end
    end
  end
end

Menu.display
