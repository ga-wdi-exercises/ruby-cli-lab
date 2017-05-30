require "pry"
require_relative "flashcards"
require_relative "deck"

deck = Deck.new

loop do
puts "Hello, please enter 1 to create a flashcard, 2 to view all flashcards, 3 to edit one, 4 to delete one, or 5 to view scores and recent answers "
choice = gets.chomp.to_i
if choice == 1
  puts "Type in the question"
  question = gets.chomp
  puts "Type in the answer"
  answer = gets.chomp
  deck.add_card(question, answer)
end
if choice == 2
  deck.cards_array.each do |card|
    puts card
  end
end
if choice == 3
  puts "Which card would you like to edit?"
  flashcards.id.each do |card|
    puts card
end
end
if choice == 4

end
if choice == 5

end
# break if choice == 0
end





binding.pry

'ends here'
