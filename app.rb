require_relative "game"

class Menu
  @@game = Game.new
  def self.display
    while true
      puts "Movie Flashcard menu options:"
      puts "Enter 1 to create a new card"
      puts "Enter 2 to view all cards"
      puts "Enter 3 to edit a card"
      puts "Enter 4 to delete a card"
      puts "Enter 5 to play"
      puts "Enter 6 to view score"
      puts "Enter 7 to view answers"
      input = gets.chomp
      if input == '1'
        @@game.create_card
      elsif input == '2'
        @@game.view_card
      elsif input == '3'
        @@game.edit_card
      elsif input == '4'
        @@game.delete_card
      elsif input == '5'
        @@game.play_card
      elsif input == '6'
        @@game.view_score
      elsif input == '7'
        @@game.view_answers
      else
        puts "Invalid option."
      end
    end
  end
end

Menu.display
