require "pry"
class FlashCard
  attr_accessor :front, :back
  def initialize front, back
    @front = front
    @back = back
  end
end
class Category
  attr_accessor :cards
  def initialize name
    @name = name
    @cards = []
  end
end


music = Category.new "Music"
music.cards.push(
 FlashCard.new("A flat", "G sharp"),
 FlashCard.new("C sharp", "D flat"),
 FlashCard.new("C flat", "B natural")
)
movies = Category.new "Movies"
movies.cards.push(
FlashCard.new("Simba", "Lion King"),
FlashCard.new("Gollum", "Lord of the Rings"),
FlashCard.new("Princess Tiana", "The Princess and the Frog")
)
class Menu
  attr_accessor
  @@category = []
  def self.show_menu
    @@category
  end
    while 1
      puts "Choose a Category"
      puts "1 for Music"
      puts "2 for Movies"
      input = gets.chomp
      if ["1", "2"].include? input
      end
      if input == "1"
        puts "Do you want to create a new flashcard"
        puts "y for yes"
        puts "n for no"
        input = gets.chomp
        break
      end
      if input == "yes"
      puts "Type music.cards.push("")"
      break
       end
      end
  end
Menu.show_menu


#if choose 1 music.cards.each{}
#else movies.cards
# puts "Do you want to view the flashcards"
# puts "Please create a new flashcard"


binding.pry
puts "done"
