require_relative "models/flashcard"

flashcards = []

while true
  puts "What would you like to do?"
  puts "   1. Create a flashcard"
  puts "   4. View flashcards"
  puts "   5. Delete a flashcard"
  input = gets.chomp
  if input == "1"
    puts "What should the front say?"
    front = gets.chomp
    puts "What should the back say?"
    back = gets.chomp
    flashcards << Flashcard.new(front, back)
  elsif input == "4"
    flashcards.each{|card| puts "#{card.front}: #{card.back}"}
  elsif input == "5"
    puts "Which flashcard would you like to delete?"
    flashcards.each_with_index{|card, i| puts "#{i}: #{card.front}: #{card.back}"}
    index = gets.chomp
    flashcards.delete_at(index.to_i)
  elsif input == "q"
    break
  end
end


#   def self.display
#     while true
#       puts "What would you like to do?"
#       puts "   2. Edit a flashcard"
#       puts "   5. Practice flashcards"
#       puts "   6. View scores"
#       input = gets.chomp
#       if ["1", "2", "3", "4", "5", "6"].include? input
#         self.select input
#         break
#       else
#         puts "Please enter the numeral next to one of the listed options."
#       end
#     end
#   end
#   def self.select num
#     if num == "1"
#
#       $main.cards << Flashcard.new(front, back)
#     elsif num == "2"
#     elsif num == "3"
#     elsif num == "4"
#     elsif num == "5"
#     else
#     end
#   end
# end
