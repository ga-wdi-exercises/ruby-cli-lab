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



#
# loop do
#     puts "Lets Play!. What matches '#{card[:front]}' ?"
#     answer = gets.chomp
#     if answer == "#{card[:back]}"
#       puts "CORRECT!"
#     else
#       puts "NOT QUITE!"
#     end
# end

# puts "back: "
# answer = gets.chomp
# card[:back] << answer


# class Flashcard
#     attr_accessor :front, :back
#
#     def initialize(front,back)
#       @front = front
#       @back = back
#     end
# end


    # class Caps < Flashcard
    #   def initialize(front,back)
    #     super(front,back)
    #   end
    # end
    #
    # class Offsprings < Flashcard
    #   def initialize(front,back)
    #     super(front,back)
    #   end
    # end
    #
    # class Zodiac < Flashcard
    #   def initialize(front,back)
    #   super(front,back)
    #   end
    # end
