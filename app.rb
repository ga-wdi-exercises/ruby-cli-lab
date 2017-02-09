require_relative "flashcard"
require_relative "flashcards"
flashcards = 

while true
  puts "What would you like to do?"
  puts "   1. Create a flashcard"
  puts "   2. Edit a flashcard"
  puts "   3. Delete a flashcard"
  puts "   4. View flashcards"
  puts "   5. Practice flashcards"
  puts "   6. View your scores"
  puts "   7. Quit"
  input = gets.chomp
  if input == "1"
    puts "What should the front say?"
    front = gets.chomp
    puts "What should the back say?"
    back = gets.chomp
    flashcards << Flashcard.new(front, back)
  elsif input == "2"
    puts "Which flashcard would you like to edit?"
    flashcards.each_with_index{|c, i| puts "#{i}: #{c.front}: #{c.back}"}
    card = flashcards[gets.chomp.to_i]
    puts "What should the front say?"
    card.front = gets.chomp
    puts "What should the back say?"
    card.back = gets.chomp
  elsif input == "3"
    puts "Which flashcard would you like to delete?"
    flashcards.each_with_index{|c, i| puts "#{i}: #{c.front}: #{c.back}"}
    index = gets.chomp
    flashcards.delete_at(index.to_i)
  elsif input == "4"
    flashcards.each{|card| puts "#{card.front}: #{card.back}"}
  elsif input == "5"
    flashcards.each do |card|
      puts "#{card.front} ..."
      answer = gets.chomp
      if answer == card.back
        puts "That's correct!"
        card.right += 1
      else
        puts "Sorry, the correct answer is #{card.back}."
        card.wrong += 1
      end
    end
  elsif input == "6"
    flashcards.each do |c|
      puts "#{c.front} (#{c.back}): #{c.right} out of #{c.right + c.wrong}"
    end
  elsif input == "7"
    break
  else
    puts "Please enter the numeral next to one of the listed options."
  end
end

#   puts "\nWhat is the capital of #{state[:name]}?"
#   def handle_input(state)
#     input = gets.chomp
#     if input == "hint"
#       puts "It starts with #{state[:capital][0..2]}"
#       handle_input(state)
#     elsif input == state[:capital]
#       puts "That's correct!"
#       state[:correct] += 1
#       $total_correct += 1
#     else
#       puts "Sorry, the answer is #{state[:capital]}."
#       state[:wrong] += 1
#       $total_wrong += 1
#     end
#   end
#   handle_input(state)
#   puts "Your #{state[:name]} score is #{state[:correct]} out of #{state[:correct]+state[:wrong]}."
#   puts "Your total score is #{$total_correct} out of #{$total_correct+$total_wrong}."
# end
#


#   input = gets.chomp.downcase
#   if input == "y"
#     $states.sort_by!{|state| state[:correct]}
#     play
#   end
# end
