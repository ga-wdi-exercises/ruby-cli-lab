  #create a new Flashcard
  #view all flashcards
  #edit a flashcards
  #delete a flashcards
  #play card
  #view score
  # end the game

  # The player should be able to see their score and how many cards/questions they got right.
  # Allow users to create lists or categories of flashcards.
  # Allow users to view only the flashcards in one particular category or another.

class Flashcard

  attr_accessor :front, :back, :correct, :wrong

  def initialize (front, back)
    @front = front
    @back = back
    @correct = 0
    @wrong = 0
  end
end

#first, make an empty array for periodic table flashcards
periodic_card = []
#make 4 or more different cards and push to an empty array of periodic_card
periodic_card << Flashcard.new("H", "Hydrogen")
periodic_card << Flashcard.new("O", "Oxygen")
periodic_card << Flashcard.new("N", "Nitrogen")
periodic_card << Flashcard.new("He", "Helium")

puts periodic_card

score = 0

while true
  puts " "
  puts "Welcome to Periodic Table Flashcards!"
  puts " "
  puts "1. Create a new Flashcard"
  puts "2. View all list of Flashcards"
  puts "3. Edit a Flashcard"
  puts "4. Delete a Flashcard"
  puts "5. Play flashcard"
  puts "6. View your scores"
  puts "7. End"

  user_input = gets.chomp

  if user_input == "1"
    puts "Type front side of Flashcard"
    front = gets.chomp
    puts "How about back side"
    back = gets.chomp
    periodic_card << Flashcard.new(front, back)

    elsif user_input == "2"
      puts " "
      periodic_card.each{ |card| puts "#{card.front}, #{card.back}"}

    elsif user_input == "3"
      puts "Which Flashcard do you want to change?"
      periodic_card.each_with_index{ |card, index| puts "#{index}: #{card.front}, #{card.back}"}
      card = periodic_card[gets.chomp.to_i]
      puts "Edit the front side of Flashcard"
      card.front = gets.chomp
      puts "Edit the back side of Flashcard"
      card.back = gets.chomp

    elsif user_input == "4"
      puts "Which flashcard do you want to delete?"
      #use .delete_at
      periodic_card.each_with_index { |card, index| puts "#{index}: #{card.front}, #{card.back}"}
      index = gets.chomp
      periodic_card.delete_at(index.to_i)

    elsif user_input == "5"
      puts "What is Full name for this card?"
      periodic_card.each do |card|
        puts " "
        puts "#{card.front}, ?"
        answer = gets.chomp
          if answer == card.back
            puts "Correct!"
            puts " "
            card.correct +=1
            puts "Your score is  #{card.correct}"
            elsif
              puts "Wrong! Answer is #{card.back}"
          end
      end

    elsif user_input == "6"
      periodic_card.each do |card|
        puts "#{card.front} (#{card.back}): #{card.correct} out of #{card.correct + card.wrong}"
      end

    elsif user_input == "7"
      break
  end
end
