# require_relative "data"

# cards = data[:cards]
$deck = []
$front = []
$back = []
$correct = []
$wrong = []
$categories = []


class Flashcard
  attr_accessor :question, :answer

  def initialize (question, answer)
    @question = question
    @answer = answer
  end
end

$deck << Flashcard.new("What's the capital of Virginia?", "Richmond")
$deck << Flashcard.new("Can birds see color?", "yes")
$deck << Flashcard.new("Peanut butter and ___ sandwich", "jelly")
$deck << Flashcard.new("You are a Web Development ___ student", "Immersive")
$deck << Flashcard.new("What is the capital of France?", "Paris")



puts "Welcome to Flash Card Bonanza!  What would you like to do?"

loop do

  puts "Press 1 to create a new card. 0 to quit"
  puts "Press 2 to view all of your cards. 0 to quit"
  puts "Press 3 to edit a card. 0 to quit"
  puts "Press 4 to delete a card. 0 to quit"
  puts "Press 5 to view your score. 0 to quit"
  puts "Press 6 to view recent answers. 0 to quit"
  puts "Press 7 to play.  0 to quit"


  user_input = gets.chomp.to_i


  if (user_input == 1)

    puts "Wonderful!  Enter your question"
    question = gets.chomp

    puts "Great!  Now enter the answer"
    answer = gets.chomp


    new_card = Flashcard.new(question, answer)
    $deck << new_card

  end

  if (user_input == 2)
      $deck.each do |card|
      puts "#{card.question} - #{card.answer}"
    end
  end


    if (user_input == 3)
      $deck.map do |card|
  #some edit functionality
      end
    end

    if (user_input == 4)
      $deck.delete()
    end

    if (user_input == 5)
      puts correct.length
    end

    if (user_input == 6)
      puts $correct
      puts $wrong
    end

    if (user_input == 7)
      puts card.question
      response = gets.chomp
      if (response == answer[0])
        $correct << response
      elsif
        $wrong << response
      end
end

end
