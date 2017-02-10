
require "pry"

class Flashcard
  attr_accessor :front, :back
  def initialize(front, back)
    @front = front
    @back = back
  end
end


movies = []
cities = []
score = 0
           cities << Flashcard.new("France", "Paris")
            cities <<  Flashcard.new("Ethiopia", "Addis Ababa")
              cities <<  Flashcard.new("U.S.A","Washington D.C.")
              cities <<  Flashcard.new("Britain","London")
            cities <<  Flashcard.new("Russia", "Moscow")

          movies << Flashcard.new("Avatar", "james cameron")
          movies <<  Flashcard.new("Inglorious bastards", "Scorcese")
          moies << Flashcard.new("Django unchained", "Quentin Tarantino")
          p movies
          p cities



     while true
       puts "Choose a category"
         puts "1 for cities"
         puts "2 for movies"
        input = gets.chomp

        if["1", "2"].include? input
          puts "you choose #{input}"

     if input == "1"
      while true
        puts "What would you like to do?"
         puts "1. Create a flashcard"
       puts "2. Edit a flashcard"
       puts "3. Delete a flashcard"
        puts "4. play flashcards"
       puts "5. your scores"
        puts "6. View flashcards and Exit "

         choice = gets.chomp
         case choice
         when "1"
            puts "what's the front of the card"
            front = gets.chomp
            puts "what's the back of the card"
            back = gets.chomp
       p   cities <<  Flashcard.new(front, back)

          when "2"
          puts "Which flashcard would you like to edit?"
             cities.each_with_index{|c, i| puts "#{i}: #{c.front}: #{c.back}"}
             card = cities[gets.chomp.to_i]
             puts "front"
             card.front = gets.chomp
              puts "back"
             card.back = gets.chomp
             p   cities <<  Flashcard.new(front, back)

      when "3"
          puts "Which flashcard would you like to delete?"
            cities.each_with_index{|c, i| puts "#{i}: #{c.front}: #{c.back}"}
            card = cities[gets.chomp.to_i]
              index = gets.chomp
                cities.delete_at(index.to_i)
            p cities
       when "4"
        puts "Try to correctly answer the capital cities of this countries"
        cities.each_with_index{|c, i| puts "#{i}: #{c.front}"}
         answer = gets.chomp
         if answer == cities.each_with_index{|m, i| puts "#{i}: #{m.back}"}
           puts "correct"
           score +=1
          else
            puts "wrong"
          end
       when "5"
         puts "your score is:#{score}"
       when "6"
       puts "Thank you for playing"
       p cities
       break
 end
end
      elsif input == "2"
      while true
        puts "What would you like to do?"
         puts "1. Create a flashcard"
       puts "2. Edit a flashcard"
       puts "3. Delete a flashcard"
        puts "4. play flashcards"
       puts "5. your scores"
        puts "6. View flashcards and Exit "

        choice = gets.chomp
         case choice
         when "1"

             puts "what's the front of the card"
             front = gets.chomp
             puts "what's the back of the card"
             back = gets.chomp
            p movies <<  Flashcard.new(front, back)
          when "2"
          puts "Which flashcard would you like to edit?"
             movies.each_with_index{|m, i| puts "#{i}: #{m.front}: #{m.back}"}
             card = movies[gets.chomp.to_i]
             puts "front"
             card.front = gets.chomp
              puts "back"
             card.back = gets.chomp
             p   movies <<  Flashcard.new(front, back)

          when "3"
          puts "Which flashcard would you like to delete?"
            movies.each_with_index{|m, i| puts "#{i}: #{m.front}: #{m.back}"}
            card = movies[gets.chomp.to_i]
              index = gets.chomp
                movies.delete_at(index.to_i)
            p movies

         when "4"
         puts "Try to correctly answer the directors of these movies"
         movies.each do |card|
         puts "#{card.front}"

          answer = gets.chomp

          if answer == card.back

           puts "correct"
           score +=1
           puts score
          else
            puts "wrong"
          end
        end
         when "5"
         puts "your score is:#{score}"
         when "6"
       puts "Thank you for playing"
       p movies
       break

    end
  end
end
end
end







binding.pry
