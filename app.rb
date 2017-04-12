require 'pry'

#  Prompt user to
  # 1 ==> Create a new flashcard
  # 2 ==> View all flashcards
  # 3 ==> Edit a flashcard
  # 4 ==> Delete a flashcard
  # 5 ==> View score / recent answers


# Create a new flashcard
puts "Create a new flash card!"
gets #{front} and #{back}



# View all flashcards
# Edit a flashcard
# Delete a flashcard
# View score / recent answers
#
#
# The player should be able to see their score and how many cards/questions they got right.
# Allow users to create lists or categories of flashcards.
# Allow users to view only the flashcards in one particular category or another.



class Flashcard
  attr_accessor :front, :back
  def initialize front, back
    @front = front
    @back = back
  end
end

Flashcard.new "Buenos Dias", "Good morning"

binding 'pry'
