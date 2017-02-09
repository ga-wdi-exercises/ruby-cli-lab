flash_cards = []
scoreCorrect = 0
scoreIncorrect = 0
# cards = cards.shuffle!

puts "Welcome to Sports Trivia FlashCards, pick from the following options to continue."
puts "1. Create new flashcard"
puts "2. View all flashcards"
puts "3. Edit a flashcard"
puts "4. Delete a flashcard"
puts "5. View score / recent answers"
puts "6. Play"
input = gets.chomp.to_i

if input == 1
  puts "Enter a question"
  question = gets.chomp
  puts "Enter the answer"
  answer = gets.chomp
  new_card = FlashCard.new question, answer
  flash_cards << new_card
  puts flash_cards
elsif input == 2
  flash_cards.each{|cards| p cards}
elsif input == 3
elsif input == 4
  flash_cards.each_with_index{|cards, index| p "#{index}. #{cards}"}
  delete_card = gets.chomp.to_i
  flash_cards.delete(delete_card)
elsif input == 5
  puts "The current score is #{scoreCorrect}"
elsif input == 6
  flash_cards.each do |cards|
    puts card [:front]
    guess = gets.chomp.to_s
    if guess == card[:back]
      puts "That is correct"
      scoreCorrect += 1
      # does there need to be an 'end' for do loops?
    else
      puts "Incorrect"
      scoreIncorrect += 1
      incorrect.answers.push card
    end
    puts "You have guessed #{scoreCorrect} correct"
  end
end

class FlashCard
  def initialize front, back
    @front = front
    @back =  back
  end
end

cards = [card1, card2, card3, card4]
flash_cards << cards
  card1 = FlashCard.new("Who made the NBA's first three-point field goal?","Chris Ford")
  card2 = FlashCard.new("Who hit the first World Series Homerun", "Jimmy Sebring")
  card3 = FlashCard.new("Who did the Chicago Cubs play in the 1908 World Series?","The Detroit Tigers")
  card4 = FlashCard.new("What was the first year that the MLB All-Star game decided which league gets home field advantage in the World Series?","2003")
