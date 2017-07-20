class Flashcard

  attr_accessor :number, :front, :back
  def initialize number, front, back
    @number = number
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
  number = @cards.length + 1
  new_card = Flashcard.new(number, front_card, back_card)
  @cards << new_card
end

def display_card
  @cards.each do |card|
  puts "#{card.number} - front: #{card.front}, back: #{card.back}"
end
end

def edit_card
  puts "enter number of card you would like to edit"
  card_num = gets.chomp.to_i
  selected_card = @cards.find do |card|
    card.number == card_num
  end
  puts "Edit card front: "
  new_front = gets.chomp

  puts "Edit card back: "
  new_back = gets.chomp

  selected_card.front = new_front
  selected_card.back = new_back
end

def delete_card
  puts "enter number of card you would like to delete"
  card_num = gets.chomp.to_i
  selected_card = @cards.find do |card|
    card.number == card_num
  end
   @cards -= [selected_card]
end

def show_score
  puts @score.to_i
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
  elsif input == "5"
    puts "there is no game.....yet"
  elsif input == "6"
    @@game.show_score
  end
  end
  end
end

# Flashcard.new "Buenos Dias", "Good morning"
Menu.display
