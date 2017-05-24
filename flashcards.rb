
class Menu
  @cards_in_play = []
  @question = ""
  @answer = ""
  @answers = Array.new
  def self.display
    while 1
      puts "Choose one of the following:"
      puts "1  - Create a flashcard"
      puts "2 - View Cards"
      puts "3 - Edit a card"
      puts "4 - Delete a card"
      puts "5 - View score"
      puts "6 - EXIT"
      input = gets.chomp
      if input == "1"
        puts "Enter your question: "
        @question = gets.chomp
        @cards_in_play.push(@question)
        puts "#{@question}"
        puts "Enter the answer: "
        @answer = gets.chomp
        @answers.push(@answer)
        puts "#{@answer}"
        Flashcard.add_card(@question, @answer)
      end
      if input == "2"
        puts "#{@cards_in_play}"
        puts "#{@answers}"
      end
      if input == "3"
        puts "Which card would you like to edit? (Enter a number)"
        card = gets.chomp.to_i
        card -= 1
        puts "#{@cards_in_play[card]}"
        puts "Enter the new text: "
        @question = gets.chomp
        @cards_in_play[card] = @question
        puts "Enter the new answer: "
        @answer = gets.chomp
        @answers[card] = @answer
      end
      if input == "4"
        puts "Which card do you want to delete?"
        delete = gets.chomp.to_i
        delete -= 1
        @cards_in_play.delete_at(delete)
        @answers.delete_at(delete)
        puts "#{@cards_in_play}"
        puts "#{@answers}"
      end
      if input == "6"
        break
      end
    #  if ["1","2","3", "4", "5"].include? input
      #  self.select input
      #  break
    #  else
    #    puts "Invalid option."
    #  end
    end

  end
  def self.select number
    puts "You selected #{number}"
  end
end

Menu.display

class Flashcard < Menu
  attr_accessor :front, :back
  def initialize front, back
    @front = front
    @back = back
  end
  def display_cards
    puts "#{@front}"
    puts "#{@back}"
  end
  def add_card(front, back)
    @front = front
    @back = back
  end
end
