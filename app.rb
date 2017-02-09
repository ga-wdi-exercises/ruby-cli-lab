require "pry"

  class Flashcard

    @@cards = [
      {question: "Capital of France", answer: "Paris"},
      {question: "Developer food", answer: "PBJ"}
    ]

     # Create new flashcard
    puts "Create your flash cards!. Type your QUESTION: "
    question = gets.chomp

    puts "And your ANSWER: "
    answer = gets.chomp
    @@cards << {question: question, answer: answer}

     # View all flashcards
     def self.view_cards
      puts @@cards
     end





  end

binding.pry
puts "end of file"
