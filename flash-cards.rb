require 'pry'
#create menu class for user to select option
class Menu
  def self.display
puts "Welcome to flashcards."
    sleep 1.5
    puts "Get ready to choose your option!"
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
  end
  def self.select number
    puts "You selected #{number}"
  end
end

Menu.display

#create flash cards
class Flashcards
  attr_accessor :front, :back

  def initialize front, back
    @front = front
    @back = back
  end
end
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
class Score < Flashcards
  def initialize score
    @score = score
  end
end

binding.pry
p "thursday"
