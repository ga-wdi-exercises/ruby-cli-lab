# require "pry"
#
# class Flashcards
#   attr_accessor :front, :back
#   # attr_accessor :answer, :question
#   attr_accessor :right, :wrong
#   def initialize front, back
#     @front = front
#     @back = back
#     @right = right
#     @wrong = wrong
#     # @question = question
#     # @answer = answer
#   end
#
#    # This function will quiz user and let them know if they were right or not
# #     def quiz
# #       puts "what is #{@question} mean?"
# #       answer = gets.chomp
# #     if answer == @answer
# #       puts "Right"
# #       return true
# #     else
# #       puts "wrong"
# #       return answer
# #     end
# #   end
# # end
#
# #prompots user correct and incorrect tries
#
# flashcards.each do |card|
#   flashcard [:right] = 0
#   flashcard [:wrong] = 0
# end
#
# #allows users to prompt the name of the capital using while loop
# while true
# flashcards.each do |card|
#   puts "Show me the " + card[:front] + "?"
#
#   answer = gets.chomp
# end
#   #If the answer is correct.....
#   if answer == card[:right]
#     puts "Correct Answer!"
#     card[:num_correct] += 1
#   else
#     #If the resonse is wrong...
#     puts "Incorrect, the card is #{card[:front]}."
#     state[:num_wrong] += 1
#   end
# end
#
#
# binding.pry
# Flashcard.new "Buenos Dias", "Good morning"
# require "pry"
# score = 0
#
# puts "lest play flashcards!!!!!!!"
# class Flashcards
#   attr_accessor :front, :back
#   attr_accessor :answer, :question
#   attr_accessor :right, :wrong, :score
#   def initialize front, back
#     @front = front
#     @back = back
#     @right = right
#     @wrong = wrong
#     @question = question
#     @answer = answer
#     @score = 0
#
#
# end
#   #This function will quiz user and let them know if they were right or not
#
#     def quiz
#       puts "what is #{@question} mean?"
#       answer = gets.chomp
#     if answer == @answer
#       puts "Right"
#       return score +=1
#     else
#       puts "wrong"
#       return score -=1
#     end
#   end
# end
#
# hello = Flashcards.new("Hello", "How are you?")
# question1 = Flashcards.new("hey", "How's it going?")
# answer = [hello, question1]
# puts answer
#
# binding.pry
#prompots user correct and incorrect tries

require "pry"
score = 0

puts "lest play flashcards!!!!!!!"
class Flashcards
  attr_accessor :front, :back

  def initialize front, back
    @front = front
    @back = back
end

while true
       answers.each do |answer|
         puts answers.front
      answer = gets.chomp
end
      if answer.downcase == answers.downcase
         puts "Your answer here is #{@score}"
          score +=1
         puts "Correct!!"

        else
          puts "Incorrect!!"
          answer.downcase == answers.downcase
          puts "Your answer in #{@score}"
           score -=1
        end
      end
    end






bdias = Flashcard.new "Buenos Dias", "Good morning"
hello = Flashcards.new("Hello", "How are you?")
question1 = Flashcards.new("hey", "How's it going?")
answer = [bdias, hello, question1]

binding.pry
