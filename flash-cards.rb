require 'pry'
class Flashcards
  attr_accessor :front, :back

  def initialize front, back
    @front = front
    @back = back
  end
end
class Deck
  attr_accessor :cards
  def initialize
    @cards = []
  end
end
d = Deck.new
d.cards.push(
Flashcards.new("front", "back")
)
#create menu class for user to select option
class Menu
  def self.display
    puts "Welcome to Antonym Flashcards."
    sleep 1.5
    puts "Enter the opposite meaning to win"
    sleep 1.5
    while 1
      puts "Choose one of the following:"
      puts "1 - View all flashcards"
      puts "2 - Create new flashcard"
      puts "3 - Edit a flashcard"
      puts "4 - Delete a flashcard"
      puts "5 - View score and answers"
      input = gets.chomp
      if ["1","2","3", "4", "5"].include? input
        self.select input
        break
      else
        puts "Invalid option."
      end
    end

    def self.select number
      puts "You selected #{number}"
    end
    if number == "1"
      p "Welcome to all the Flashcards"
      Flashcards.new
    end
    if number == "2"
      p "Create new cards"
      Create.new
    end
    if number == "3"
      p "Edit current cards"
      Edit.new
    end
    if number == "4"
      p "Delete cards"
      Delete.new
    end
    if number == "5"
      p "View your score"
      View.new
    end

  end
end

Menu.display

#create flash cards
#need to create a txt file that will house the questions and answers




#create class to delete
class Create < Flashcards
  def initialize create
    @create = create

  end
end
#create class to
class Edit < Flashcards
  def initialize edit
    @edit
  end
end
#create delete class
class Delete < Flashcards
  def initialize delete
    @delete = delete
  end
end
#create score class
class View < Flashcards
  def initialize score
    @score = score
  end
end



binding.pry
p "thursday"
