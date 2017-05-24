require 'pry'

puts "_______  ___      _______  _______  __   __    _______  _______  ______    ______     _______  _______  __   __  _______   "
puts "|       ||   |    |   _   ||       ||  | |  |  |       ||   _   ||    _ |  |      |   |       ||   _   ||  |_|  ||       | "
puts "|    ___||   |    |  |_|  ||  _____||  |_|  |  |       ||  |_|  ||   | ||  |  _    |  |    ___||  |_|  ||       ||    ___| "
puts "|   |___ |   |    |       || |_____ |       |  |       ||       ||   |_||_ | | |   |  |   | __ |       ||       ||   |___  "
puts "|    ___||   |___ |       ||_____  ||       |  |      _||       ||    __  || |_|   |  |   ||  ||       ||       ||    ___| "
puts "|   |    |       ||   _   | _____| ||   _   |  |     |_ |   _   ||   |  | ||       |  |   |_| ||   _   || ||_|| ||   |___  "
puts "|___|    |_______||__| |__||_______||__| |__|  |_______||__| |__||___|  |_||______|   |_______||__| |__||_|   |_||_______| "

puts "\n\n"


class FlashCard
attr_accessor :front, :back
@@flashcards = []

  def initialize (front, back)
    @front = front
    @back = back
    @@flashcards.push(self)
  end

  def self.create
    puts "Add a front"
    front = gets.chomp

    puts "Add a back"
    back = gets.chomp

    FlashCard.new(front, back)
  end

  def self.view
    @@flashcards.each do |card|
      puts card.front
      puts "-----------------------"
      puts card.back
      puts "\n\n"
    end
  end


  def self.delete
    @@flashcards.each_with_index do |card, index|
      puts card
      # puts card.back
  end
end


  def self.play
    score = 0
    @@flashcards.each do |card|
      puts card.front

      puts "What is your answer?"
      answer = gets.chomp

      if answer == card.back
        puts "Your answer is correct"
        score +=1
      end
    end
      puts "You have #{score} correct answers out of #{@@flashcards.length} questions"
  end


end

newFlashCardOne = FlashCard.new("What is the capital of Turkey?", "Ankara")
newFlashCardTwo = FlashCard.new("What is the capital of England?", "London")
newFlashCardThree = FlashCard.new("What is the capital of France?", "Paris")

class Menu
  def self.display
    # ASK!!!
    while 1
      puts "Choose one of the following:"
      puts "1 - Create a new flashcard"
      puts "2 - View all flashcards"
      puts "3 - Delete a flashcard"
      puts "4 - Play Flashcard"

      input = gets.chomp

      if input == "1"
        FlashCard.create
      elsif input == "2"
        FlashCard.view
      elsif input == "3"
        FlashCard.delete
      elsif input == "4"
        FlashCard.play

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


binding.pry
