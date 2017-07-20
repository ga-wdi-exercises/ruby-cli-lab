

class Flashcard
  attr_accessor :front, :back
  def initialize front, back
    @front = front
    @back = back
  end

end

class Game
def initialize
  @cards = []
end

def new_flash_card
  puts "enter info for front"
  front_card = gets.chomp
  puts "enter info for back of card"
  back_card = gets.chomp
  new_card = Flashcard.new(front_card, back_card)
  @cards << new_card
end

def display_card
  @cards.each do |card|
  puts "front: #{card.front}, back: #{card.back}"
end
end

def edit_card
 puts "Edit first card front: #{@cards[0].front}"
 newedit = gets.chomp
 @cards[0].front = newedit
 puts "Edit first card back: #{@cards[0].back}"
 newedit2 = gets.chomp
@cards[0].back = newedit2
end

def delete_card
  @cards.pop
end
end

class Menu
  @@game = Game.new
  def self.display
    while 1
    puts "Welcome to Flash Cards 2.2.2."
    puts "Enter 1 to create a new flashcard"
    puts "Enter 2 to view all flashcards"
    puts "Enter 3 to edit a flashcard"
    puts "Enter 4 to delete a flashcard"
    puts "Enter 5 to play cards"
    puts "Enter 6 to view score"
    input = gets.chomp
    if input == "1"
    @@game.new_flash_card
    elsif input == "2"
    @@game.display_card
    elsif input == "3"
    @@game.edit_card
    elsif input == "4"
    @@game.delete_card
  end
  end
  end
end

# Flashcard.new "Buenos Dias", "Good morning"
Menu.display
