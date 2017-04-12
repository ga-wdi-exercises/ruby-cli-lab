require_relative "data"

cards = data[:cards]
deck = []
front = []
back = []
correct = []
wrong = []
categories = []


class Flashcard
  attr_accessor :id, :question, :answer

  def initialize (id, question, answer)
    @id = id,
    @question = question,
    @answer = answer
  end
end

puts "Welcome to Flash Card Bonanza!  What would you like to do?"


  puts "Press 1 to create a new card. 0 to quit"
  puts "Press 2 to view all of your cards. 0 to quit"
  # puts "Press 3 to edit a card. 0 to quit"
  # puts "Press 4 to delete a card. 0 to quit"
  # puts "Press 5 to view your score. 0 to quit"
  # puts "Press 6 to view recent answers. 0 to quit"
  # puts "Press 7 to play.  0 to quit"


user_input = gets.chomp.to_i

# while user_input > 0 do

  if (user_input == 1)
    new_card = Flashcard.new(flashcard[:question], flashcard[:answer])
      deck << new_card

    puts "Wonderful!  Enter your question"
    question = gets.chomp

    puts "Great!  Now enter the answer"
    answer = gets.chomp


  end

if (user_input == 2)
    deck.each do |card|
    puts card
    # return deck
  end
end


  if (user_input == 3)
    deck.map do |card|
#some edit functionality
    end
  end

  if (user_input == 4)
    deck.delete()
  end

  if (user_input == 5)
    puts correct.length
  end

  if (user_input == 6)
    puts correct
    puts wrong
  end

  if (user_input == 7)
    puts question[0]
    response = gets.chomp
    if (response == answer[0])
      correct << response
    elsif
      wrong << response
    end
end
