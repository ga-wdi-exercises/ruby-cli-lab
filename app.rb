require "pry"

puts "**Flashcards**"

# class Menu
#   def self.display
#     while true
#       puts "MAIN MENU:\n  Type '1' to create a new flashcard \n  Type '2' to view all flashcards \n  Type '3' to edit a flashcard\n  Type '4' to delete a flashcard\n  Type '5' to view a flashcard\n  Type 'exit' to close the app"
#      input = gets.chomp
#      if ["1","2","3", "4", "5", "exit"].include? input
#         self.select input
#        break
#      else
#        puts "Invalid option"
#      end
#    end
#  end
#

class Flashcard
  attr_accessor :front, :back
  def initialize front, back
    @front = front
    @back = back
  end
end

def options
  puts "MAIN MENU:\n  Type '1' to create a new flashcard \n  Type '2' to view all flashcards \n  Type '3' to edit a flashcard\n  Type '4' to delete a flashcard\n  Type '5' to view a flashcard\n  Type 'exit' to close the app"
      input = gets.chomp
    end
      input = options
      flashcards = []
      while input != "exit"
      if input == "1"
         puts "Let's create a new flashcard"
         puts "What do you want the front to say?"
             front = gets.chomp
         puts "what do you want the back to say?"
             back = gets.chomp
         flashcard_created = Flashcard.new(front,back)
           flashcards << flashcard_created
           puts "New flashcard created!"
           puts options
           break

         end
       if input == "2"
         puts "Here's a list of the flashcards"
            puts flashcards
            puts options
          break
         end
       if input == "3"
         puts "Let's edit a flashcard:\n  Which flashcard do you want to edit?"
         puts flashcards
         puts options
          break
         end
       if input == "4"
         puts "Which card do you want to delete?"
         puts options
         break
         end
       if input == "5"
         puts "Here's your score"
         puts options
         break
         end

end


binding.pry
puts "end of file"
