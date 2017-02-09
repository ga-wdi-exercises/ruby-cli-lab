require "pry"

# design a flashcards management application
# use the command line to allow users to create, read, update, and delete flashcards
# view all flashcards
# edit a flashcard
# delete a flashcard
# view score / recent answers
# player can quit commandline and resume the game
# show score to players and their cards/question ratio on what they got right
# allow users to create lists or categories of flashcards
# allow users to view only flashcards in one category or another

puts "Just Do It: Cards By Nike!"

class flash_cards
  attr_accessor :frontofcards, :backofcards
  def initialize (frontofcards, backofcards)
    @frontofcards = frontofcards
    @backofcards = backofcards
  end
end

while true
  puts "Press 1 to add an card to your deck"
  puts "Press 2 to view the cards in your deck"
  answer = gets.chomp.to_i
  if answer == 1
    puts "What do you want the front of the Nike card to say?"
    front = gets.chomp
    puts "What do you want the back of the Nike card to say"
    back = gets.chomp

    puts flash_cards.new(frontofcards, backofcards)
  end
  break
end


flashcard1 = flash_cards.new("Air Max", "001")
flashcard2 = flash_cards.new("Air Max", "002")
flashcard3 = flash_cards.new("Air Max", "003")
flashcard4 = flash_cards.new("Air Max", "004")


binding.pry
puts "end of file"
