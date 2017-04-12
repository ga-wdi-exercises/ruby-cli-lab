## Gameplay

#- When starting the application, prompt the user to:
#  - Create a new flashcard
#  - View all flashcards
#  - Edit a flashcard
#  - Delete a flashcard
#  - View score / recent answers

## Requirements

#- The player should be able to quit the command line and resume their game later.
#- The player should be able to see their score and how many cards/questions they got right.
#- Allow users to create lists or categories of flashcards.
#- Allow users to view only the flashcards in one particular category or another.



# Create a new flashcard

 require "Pry"

class FlashCard
  attr_accessor :front, :back,

def initialize (front, back)
    @front = front
    @back = back
    @cards = []
    @@all.push(self)
end

def add_card
    @cards.push(self)
end

end


while
      puts "1 - Add Card"
      puts "2 - View Cards"
      puts "3 - Play Game"
      puts "4 - Quit"
     input = gets.chomp

if input == "1"
       puts "Please type in the front of the card"
       front = gets.chomp
       puts "Please type in the back of the card"


elsif input == "2"

end

end
break


binding.pry
