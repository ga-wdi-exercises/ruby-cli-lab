
class Menu

  def self.display
    while 1
      puts "Choose one of the following:"
      puts "1 - Create a new flashcard"
      puts "2 - View all flashcards"
      puts "3 - Edit a flashcard"
      puts "4 - Delete a flashcard"
      puts "5 - View score/recent answers"
      input = gets.chomp
      if ["1","2","3", "4", "5",].include? input
        self.select input
        break
      else
        puts "Invalid option."
      end
    end
  end
  def self.select number
    puts "You selected #{number}"
    if number == "1"
      puts "what is the front of your card?"
      front_input = gets.chomp.to_s
      puts "what is the back of your card?"
      back_input = gets.chomp.to_s
      puts "The new flashcard:\n front: #{front_input}\n back: #{back_input}"
      new_card = Flashcard.new(front_input, back_input)
    elsif number == "2"
    elsif number == "3"
    elsif number == "4"
    elsif number == "5"
    end
  end
end

class Flashcard
  attr_accessor :front, :back
  @@flashcards = []
  def initialize front, back
    @front = front
    @back = back
    @@flashcards << self
  end
  def self.all_cards
    @@flashcards
  end
end

Menu.display()
