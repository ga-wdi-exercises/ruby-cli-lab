require "pry"

# Game welcome
puts "Welcome to Gametime"
puts "Type cardlist.print_details to view all flashcards"
puts "Type edit to change flashcard"
puts "delete to delete a flashcard"
puts "view to see score"
puts "Type card (plus number)to play"
user_input = gets.chomp

# Flashcard board
$cardlist = []
$cards = [card1, card2, card3, card4]
userinput = ""

class Flashcard
  attr_accessor :front, :back

  def initialize(front, back)
    @front = front
    @back = back
  end

# prompt user to create cards
  def card
    card = @card
    index = 0
    cards.each do |card|
      puts "Question: #{card.front}"
    cardlist  << {front:front, back:back}
    index +=1
  end
  end



end

class User
  # user can create categories
  def set_category(some_string)
    @category = some_string
    category.push(card)
  end

  # user can view all flashcards
    def get_cardlist
      $cardlist.find_all
      puts "cardlist: #{@front}"
    end

 # user can delete flashcard
    def delete
      @card.pop
      if user_input === delete
        delete
      end
    end

 # user can view score
    def gets_score_view
      @view = view
      if user_input === view
        display
      end
    end

# user should be able to quit the command line and resume game later
  def quit
    @quit = quit
      if user_input == quit
        stop
      else card
      end
  end

  index = 0
  if card.front === card.back
    puts "Correct!"
    index +=1
  else
    puts "Incorrect"
  end
end


card1 = Flashcard.new("What is the Capital of Guyana?", "Georgetown")
card2 = Flashcard.new("Who was the 44th President of the USA?", "Barack Obama")
card3 = Flashcard.new("What year has January been the hottest in 90 years?", "2017")
card4 = Flashcard.new("What Food Network star has his own burger joint?", "Bobby Flay")




binding.pry
