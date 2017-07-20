require_relative "Flashcard"

 class Menu
   def initialize
     @cards = []
   end
   def show
     while 1
    puts "Choose one the following"
     puts "A - Create a new flashcard"
           puts "B - View all flashcards"
      puts "C - Edit a flashcard"
       puts "D - Delete a flashcard"
       puts "E - View score/recent answers"
       puts "S - select card"
       input = gets.chomp
       if input == "A"
         puts "Enter Front of Card"
         front = gets.chomp
         puts "Enter Back of Card"
         back = gets.chomp
         card = Flashcard.new(front, back)
         @cards << card
       elsif input == "B"
         puts "b"
       elsif input == "C"
         puts "c"
       elsif input == "D"
         puts "d"
       elsif input == "S"
         @cards.each do |card|
           puts "#{card.front}"
         end
         puts "Enter Card Name"
         name = gets.chomp
         selected_card = @cards.find do |card|
           card.front === name
         end
         selected_card.display
       else
         puts "none"
       end
     end
   end
 end
