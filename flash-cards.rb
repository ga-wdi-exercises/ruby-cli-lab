class Flashcard
  attr_accessor :front, :back

  @@all_flashcards = []

  def initialize(front, back)
    @front = front
    @back = back
    @@all_flashcards.push(self)
  end

  def self.add_card
    puts "What should the front say?"
    front = gets.chomp
    puts "What should the back say?"
    back = gets.chomp
    Flashcard.new(front, back)
    # puts @@all_flashcards[0].inspect
  end

  def self.show_cards
    @@all_flashcards.each_with_index do |flashcard, index|
      puts "Card #{index + 1} front: #{flashcard.front}."
      puts "Card #{index + 1} back: #{flashcard.back}."
    end
  end

end

# Flashcard.new "Buenos Dias", "Good morning"
# Flashcard.new "Fronting", "Backing"


class Menu
  def self.display
    while 1
      puts ""
      puts "There is a study that shows flashcards help you study."
      puts ""
      puts "MENU"
      puts "Choose one of the following:"
      puts "1 - Start Flashcard Review"
      puts "2 - Create a new Flashcard"
      puts "3 - View all Flashcards"
      puts "4 - Edit a Flashcard"
      puts "5 - Delete a Flashcard"
      puts "6 - View score / recent answers"
      input = gets.chomp
      if ["1","2","3","4","5","6"].include? input
        self.select (input)
        # break
      else
        puts "Invalid option."
      end
    end
  end
  def self.select(number)
    puts "You selected #{number}"
      case number
      when "1"
      when "2"
        Flashcard.add_card
      when "3"
        Flashcard.show_cards
      when "4"
      when "5"
      when "6"
    end
  end
end

Menu.display
