require 'pry'
require_relative "FlashCardApp/flash_cards"
# require_relative "FlashCardApp/data"



class Game
  attr_accessor :game_play
  def initialize
    puts "Welcome to Flash Cards. To play, just press enter."
    userInput = gets
    @game_play = Flashcard.flashcards_box
    puts @game_play
  end
  def delete_card
    @game_play.pop
  end
  def add_card
    loop do
      if userInput == @game_play[]
        @game_play << {name: new_card}
      else
        userInput = gets
    end
  end
end

winner = Game.new



# else
#   puts "Thanks for visiting!"
#   end
# end





binding.pry

puts "end of game"
