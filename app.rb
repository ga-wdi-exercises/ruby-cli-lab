require "pry"
$flashcards = [
  {:front => "hola", :back => "hi"},
  {:front => "perro", :back => "dog"},
  {:front => "gato", :back => "cat"},
  {:front => "adios", :back => "bye"},
  {:front => "hasta luego", :back => "see you later"}
]
class Menu

  def self.display
    while 1
      puts "Choose one of the following:"
      puts "1 - Create a new flashcard"
      puts "2 - View all flashcards"
      puts "3 - Edit a flashcard"
      puts "4 - Delete a flashcard"
      puts "5 - View score/recent answers"
      puts "6 - Test your skills with flashcards"
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
      new_card = Flashcard.new(front_input, back_input) ##need to fix
    elsif number == "2"
      puts Flashcard.all_cards
    elsif number == "3"
      puts "Would you like to edit the front or back of card? Type 'front' or 'back'."
      input_edit = gets.chomp.to_s
      if input_edit == "front"
        puts "Which card would you like to edit? Type the front value to select the card."
        input_card_to_edit_f = gets.chomp.to_s
        puts "what would you like to change the front to?"
        input_new_front = gets.chomp.to_s
        Flashcard.all_cards.each do |card|
          if card[:front] == input_card_to_edit_f
            card[:front] = input_new_front
          end
        end
      elsif input_edit == "back"
        puts "Which card would you like to edit? Type the back value to select the card."
        input_card_to_edit_b = gets.chomp.to_s
        puts "what would you like to change the back to?"
        input_new_back = gets.chomp.to_s
        Flashcard.all_cards.each do |card|
          if card[:back] == input_card_to_edit_b
            card[:back] = input_new_back
          end
        end
      else
        puts "Not a valid input"
      end
    elsif number == "4"
      puts "which card would you like to delete? Type in the front value"
      input_delete = gets.chomp.to_s
      Flashcard.all_cards.delete_if{|card| card[:front] == input_delete}
    elsif number == "5"
      puts Game.score ##need to fix
    end
  elsif number == "6"
    Game.play_game()
  end
end

class Flashcard
  attr_accessor :front, :back
  @@flashcards = $flashcards
  def initialize front, back
    @front = front
    @back = back
    @@flashcards << self

  end
  def self.all_cards
    @@flashcards
  end
end
index = 0
while index == 0
Menu.display()
end
binding.pry

class Game
  attr_accessor :player, :score
  def initialize(player)
    @player = player
    @score = 0
  end
  def add_player(player)
    puts "Welcome #{@player}!"
  end
  def play_game
    Flashcard.all_cards.each do |card|
      puts "what does #{card[:front]} mean?"
      input_answer = gets.chomp.to_s
      if input_answer == card:back
        puts "correct answer!"
        score += 1
      else
        puts "incorrect answer"
      end
    end
  end

end
