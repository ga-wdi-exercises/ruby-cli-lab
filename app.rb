require 'pry'
require_relative "FlashCardApp/flash_cards"
# require_relative "FlashCardApp/data"



class Game
  attr_accessor :game_play
  def initialize
    # @game_play = Flashcard.flashcards_box
    puts "Welcome to Flash Cards. To play, just press enter."

    userInput = gets.chomp
    if userInput.capitalize == ""
      puts "Let's begin"
      userInput = gets.chomp
      # def start_game
  end
end
    #
    # Flashcard.flashcards_box
        #
        # score = 0
        #
        # flashcards_box = flashcards_box.shuffle
        #
        #
        # flashcards_box.each do ||
        #   puts "#{flashcards_box[:front]}"
        #   userInput = gets.chomp
        #   flashcards_box[:userInput] == "correct"
        #   score += 1
        # end
        # # else
        # #   put "you wrong"




      # else
      #   puts "Thanks for visiting!"
    #   end
    # end
  end




binding.pry

puts "end of game"
