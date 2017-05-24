require "pry"

class Flashcard
  attr_accessor :front, :back
  #@@input = input
  def initialize(front, back)
    @front = front
    @back = back
  end
#view all flash cards
  # def self.view_cards
  #   if self.select input == 1
  #   puts "Create a flashcard"
  # end
    # ObjectSpace.each_object(self).to_a
  end
  # def self.make_card
  #   1 = gets
  # end


#Create a menu class that includes create, read, update and delete

 class Menu
   def self.display
     while 1
       puts "Choose one of the following:"
       puts "1 - Create a flashcard"
       puts "2 - View all flashcards"
       puts "3 - Edit a flascard"
       puts "4 - Delete a flascard"
       puts "5 - View score / Recent answers"
       input = gets.chomp
       if ["1","2","3","4","5"].include? input
         self.select input
         break
       else
         puts "Invalid option."
       end
     end
   end
  #  input = ""
  #  input = gets

   def self.select number
     puts "You selected #{number}"
     if input  == 1
       puts "Create a flashcard"
     end
     Flashcard.view_cards
   end
 end
Menu.display
# create flashcard (to be added to an array (maybe.push))

#
# french = Flashcard.new("Bonjour", "Good Morning")
# french2 = Flashcard.new("Bonne Nuit", "Good Night")
# spanish = Flashcard.new("Buenos Dias", "Good Morning")
# spanish2 = Flashcard.new("Buenos Noches", "Good Night")
# portuguese = Flashcard.new("bom Dia", "Good Morning")
# portuguese2 = Flashcard.new("boa noite", "Good Night")


#view all flash card



#edit flashcards

# delete flashcards
binding.pry
