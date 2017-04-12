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
