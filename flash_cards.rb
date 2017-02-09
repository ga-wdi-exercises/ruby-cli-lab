require "pry"

# design a flashcards management application
# use the command line to allow users to create, read, update, and delete flashcards

# create a new flashcard
class flash_cards
  attr_accessor :frontofcards, :backofcards
  def initialize (frontofcards, backofcards)
    @frontofcards = frontofcards
    @backofcards = backofcards
  end
end

# view all flashcards
  puts "Here you can create, view, edit, and delete a flashcards"

# edit a flashcard

# delete a flashcard

# view score / recent answers

# player can quit commandline and resume the game

# show score to players and their cards/question ratio on what they got right

# allow users to create lists or categories of flashcards

# allow users to view only flashcards in one category or another

binding.pry
puts "end of file"
