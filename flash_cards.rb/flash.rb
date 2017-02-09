
require "pry"

class Flashcard

     attr_accessor :front, :back

     def initialize (front, back)
       @front = front
       @back = back
     end
  class Categories
    attr_accessor :cards
    def initialize name
      @name = name
      @cards = []
  end



  cardA =Flashcard.new("France", "Paris")
  cardB = Flashcard.new("Ethiopia", "Addis Ababa")
  cardC =  Flashcard.new("U.S.A","Washington D.C.")
  cardD = Flashcard.new("Britain","London")
  cardE = Flashcard.new("Russia", "Moscow")

  cities = Categories.new "cities"
  cities = []


    cities << (cardA)
    cities << (cardB)
    cities << (cardC)
    cities << (cardD)
    cities << (cardE)


    card1 = Flashcard.new("Avatar", "james cameron")
    card2 = Flashcard.new("Inglorious bastards", "Scorcese")
  movies = Categories.new "movies"

   movies = []

   movies << (card1)
   movies << (card2)
end
end

   class Menu

        attr_accessor :Categories
        @@Categories = []
         def self.show_menu

        end

     while 1
       puts "Choose a category"
         puts "1 for cities"
         puts "2 for movies"
        input = gets.chomp

        if["1", "2"].include? input
          puts "you choose #{input}"
      if input == "1"
       puts "do you wanna create a new card? - yes or no"
          choice = gets.chomp
          if choice == "yes"
            puts "what's the front of the card"
            front = gets.chomp
            puts "what's the back of the card"
            back = gets.chomp
          p  Flashcard.new(front, back)
          break

        elsif choice == "no"
           puts "Would you like to see the cards"
         end
         break
       else
            puts "Not in the option."
        end


      elsif input == "2"
        puts "do you wanna create a new card? - yes or no"
           choice = gets.chomp
           if choice == "yes"
             puts "what's the front of the card"
             front = gets.chomp
             puts "what's the back of the card"
             back = gets.chomp
            p   Flashcard.new(front, back)
    end
        else
           puts "Not in the option."
         end
end
end

binding.pry
