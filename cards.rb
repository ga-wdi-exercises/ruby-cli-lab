require 'pry'

class Flashcard
  attr_accessor :front, :back, :questions


  @@questions = []



  def initialize front, back
    @front = front
    @back = back
    @@questions.push(self)
    @@questions_random = @@questions.shuffle
    $correct_score = 0;
    $wrong_score = 0;
    $total_score = @@questions.length;
  end

  def self.add_cards
    puts "Type your question."
    front = gets.chomp
    puts "Type your answer."
    back = gets.chomp
    Flashcard.new front, back
    puts "Add another card? Yes/No"
    card_input = gets.chomp
    if card_input.downcase == "yes".downcase
      self.add_cards
    else
      Menu.display
    end
  end

  def self.show_cards
    @@questions.each_with_index do |question, index|
      puts "Flashcard ##{index + 1}= Question: #{question.front}, Answer: #{question.back}"
    end
    Menu.display
  end

  def self.play_cards

    while true
      @@questions_random.each_with_index do |question, index|
        puts "-" * 30
        puts "Flashcard ##{index + 1}= Question: #{question.front}"
        puts "Answer is?"
        answer = gets.chomp
        if answer.downcase == question.back.downcase
          puts "Correct!"
          $correct_score += 1
        else
          puts "Wrong!"
          puts "The correct answer is: #{question.back}"
          $wrong_score += 1
        end
      end
      puts "Total score: #{$correct_score} out of #{$total_score} correct."
      $correct_score = 0
      puts "Study again? Yes/No"
      studyagain = gets.chomp
      break if studyagain.downcase == "no".downcase
    end
    # Menu.display
  end

  def self.delete_card
    puts "These are all your flashcards:"
    @@questions.each_with_index do |question, index|
      puts "Flashcard ##{index + 1}= Question: #{question.front}, Answer: #{question.back}"
    end
    puts "Type the number to delete:"
    card_number = gets.chomp
    @@questions.each_with_index do |question, index|
      if card_number == "#{index + 1}"
        @@questions.delete(question)
      end
    end

  end

end

question1 = Flashcard.new "10", "Jyuu"
question2 = Flashcard.new "6", "Roku"
question3 = Flashcard.new "100", "Hyaku"
question4 = Flashcard.new "8", "Hachi"
question5 = Flashcard.new "3", "San"

class Menu
  def self.display
    while 1
      puts "Let's learn numbers in Japanese! Choose the following options:"
      puts "1 - New Flashcard"
      puts "2 - View All Flashcards"
      puts "3 - Delete Flashcard"
      puts "4 - Study flashcards"
      puts "X - Exit"
      input = gets.chomp
      if input == "1"
        Flashcard.add_cards
      elsif input == "2"
        Flashcard.show_cards
      elsif input == "3"
        Flashcard.delete_card
      elsif input == "4"
        Flashcard.play_cards
      else input.downcase == "x"
        exit(true)
      end
    end
  end
end

Menu.display



binding.pry
