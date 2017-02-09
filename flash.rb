require "pry"

puts "Welcome to Flashcard. Please type enter to continute"

class Flashcard
  attr_accessor :front, :back
  def initialize (front, back)
    @front = front
    @back = back
  end
end

play_game = false
card = []


while play_game = true
   puts "Enter 1 to add card"
   puts "Enter 2 to view all cards"
   puts "Enter 3 to edit card"
   puts "Enter 4 to delete card"
   puts "Enter 5 to play"
   puts "Enter 6 to exit"

   input = gets.chomp.to_i
   if input == 1
       puts "enter a front"
       front = gets.chomp
       puts "enter a back"
       back = gets.chomp
       card << [front, back]
       puts "#{card}"
     end
    if input == 2
      card.each do |cards|
        puts "#{cards}"
     end
    if input == 3
      puts "hello!!"
    end
  end
end

































binding.pry
