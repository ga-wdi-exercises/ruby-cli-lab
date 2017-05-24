class Flashcard
  attr_accessor :front, :back

  @@all_flashcards = []
  $flashcards = @@all_flashcards

  def initialize(front, back)
    @front = front
    @back = back
    @@all_flashcards.push(self)
  end

  def self.add_card
    puts "="*50
    puts "What should the front say?"
    front = gets.chomp
    puts "="*50
    puts "What should the back say?"
    back = gets.chomp
    Flashcard.new(front, back)
    # puts @@all_flashcards[0].inspect
    puts "~"*50
    puts "~"*50
    puts "Would you like to make another flashcard?"
    puts "yes / no"
    if gets.chomp == "yes"
      Flashcard.add_card
    else
      Menu.display
    end
  end

  def self.show_cards
    @@all_flashcards.each_with_index do |flashcard, index|
      puts "~"*50
      puts "Card #{index + 1} front: #{flashcard.front}."
      puts "Card #{index + 1} back: #{flashcard.back}."
      puts "~"*50
      puts ""
    end
  end

  def self.delete_card
    if @@all_flashcards == 0
      puts "Sorry, there are no cards to delete."
      Menu.display
    end
    @@all_flashcards.each_with_index do |flashcard, index|
      puts "Card #{index + 1} front: #{flashcard.front}."
      puts "Card #{index + 1} back: #{flashcard.back}."
    end
    puts "Select a card number to delete."
    user_input = gets.chomp
    delete_card = user_input.to_i
    del = delete_card - 1
    @@all_flashcards.delete_at(del)
    puts "~"*50
    puts "~"*50
    puts "Would you like to delete another flashcard?"
    puts "yes / no"
    if gets.chomp == "yes"
      Flashcard.delete_card
    else
      Menu.display
    end
  end

end

# Flashcard.new "Buenos Dias", "Good morning"
# Flashcard.new "Fronting", "Backing"
class Game
  def self.play
    $flashcards.each_with_index do |flashcard, index|
      puts ""
      puts "~"*50
      puts "~"*50
      puts "Please type in your answer."
      puts ""
      puts "Card #{index + 1}, front: #{flashcard.front}."
      user_input = ""
      answer = "#{flashcard.back}"
      until user_input.downcase == answer.downcase do
        user_input = gets.chomp
        puts "Try Again"
      end
        puts ""
        puts "="*50
        puts "Card #{index + 1}, back: #{flashcard.back}."
        puts "!!!You got that card correct!!!"
    end
  end
end

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
      puts "4 - Delete a Flashcard"
      puts "5 - Exit"
      input = gets.chomp
      if ["1","2","3","4","5"].include? input
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
        Game.play
      when "2"
        Flashcard.add_card
      when "3"
        Flashcard.show_cards
      when "4"
        Flashcard.delete_card
      when "5"
        puts "Ciao"
        exit(true)
    end
  end
end

Menu.display
