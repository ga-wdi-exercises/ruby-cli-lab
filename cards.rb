require "pry"

class Flashcard
  attr_accessor :front, :back

  @@carddeck = []

  def initialize (front, back)
    @front = front
    @back = back
    @@carddeck.push(self)
  end

  def self.display_all
      #puts "#{@@carddeck}"
      @@carddeck.each do |card|
        puts "#{card.front}" + "-" + "#{card.back}"
      end
      Menu.display
  end


  def self.new_card
    puts "Spanish Word?"
    front = gets.chomp
    puts "Engish Translation"
    back = gets.chomp
    Flashcard.new front, back
    #puts @@carddeck.inspect
    puts "Add another card? Y/N"
      input = gets.chomp
      if input == "Y"
        self.new_card
      else
        Menu.display
      end
  end

  def self.play_game
    @@carddeck.each_with_index do |espanol, index|
      puts "-" * 40
    puts "Flashcard #{index +1} = Spanish: #{espanol.front}"
    puts "What is this word in English?"
    answer = gets.chomp
    if answer == espanol.back
      puts "Correct!"
    else
      puts "Incorrect. The answer was #{espanol.back}"
      end
    end
    Menu.display
  end
end
#need to prompt for user input ("spanish word", "english word") or prompt for spanish word: then english word:.
#Instances below
question1 = Flashcard.new "buenos dias", "good morning"
question2 = Flashcard.new "hola", "hello"
question3 = Flashcard.new "comida", "food"
question4 = Flashcard.new "gato", "cat"
question5 = Flashcard.new "queso", "cheese"
question6 = Flashcard.new "arroz", "rice"
question7 = Flashcard.new "casa", "house"


# Flashcard.new(:front, :back) [
#   {front: "Buenos Dias", back: "Good Morning"},
#   {front: "Hola", back: "Hello"}
# ]
class Menu

  def self.display
    while 1
      puts "Choose one of the following:"
      puts "1 - See All Cards"
      puts "2 - Add Card"
      puts "3 - Study Cards"
      puts "E - Exit Game"
      input = gets.chomp
      if ["1","2","3","E"].include? input
        self.select input
        break
      else
        puts "Invalid option."
      end
    end
  if input == "1"
    Flashcard.display_all
  elsif input == "2"
    Flashcard.new_card
  elsif input == "3"
    Flashcard.play_game
  else input == "E"
    puts "Thanks for playing!"
    exit(true)
    end
  end
  def self.select number
    puts "You selected #{number}"
  end
end

Menu.display

binding.pry
