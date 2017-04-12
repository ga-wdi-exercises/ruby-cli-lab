# require_relative "data"

# cards = data[:cards]
$deck = []
$front = []
$back = []
$correct = []
$wrong = []
$categories = []


class Flashcard
  attr_accessor :question, :answer, :category

  def initialize (question, answer, category)
    @question = question
    @answer = answer
    @category = category
  end
end

$deck << Flashcard.new("What's the capital of Virginia?", "Richmond", "geography")
$deck << Flashcard.new("Can birds see color?", "yes", "random")
$deck << Flashcard.new("Peanut butter and ___ sandwich", "jelly", "food")
$deck << Flashcard.new("You are a Web Development ___ student", "Immersive", "random")
$deck << Flashcard.new("What is the capital of France?", "Paris", "geography")

# NOTE: what follows here is the most recent attempt at categorizing the cards, and then
#pushing them into the categories array.
#the idea is this:
  #go through DECK.  for each card in DECK, find

$deck.each do |card|
  geo = [$deck.find{|x| x['category'] == 'geography'}]
  $categories << geo

  fud = [$deck.find{|x| x['category'] == 'food'}]
  $categories << fud

  rndm = [$deck.find{|x| x['category'] == 'random'}]
  $categories << rndm
end



# $deck.select do |card|
#   geo = (card.category == "geography")
#   $categories[geography] << geo
# end
# $deck.select do |card|
#   fud = (card.category == "food")
#   $categories[food] << fud
# end
# $deck.select do |card|
#   rndm = (card.category == "random")
#   $categories[random] << rndm
# end



puts "Welcome to Flash Card Bonanza!  What would you like to do?"

loop do

  puts "Press 1 to create a new card. 0 to quit"
  puts "Press 2 to view all of your cards. 0 to quit"
  puts "Press 3 to edit a card. 0 to quit"
  puts "Press 4 to delete a card. 0 to quit"
  puts "Press 5 to view your score. 0 to quit"
  puts "Press 6 to view recent answers. 0 to quit"
  puts "Press 7 to play.  0 to quit"
  puts "Press 8 to categorize the cards.  0 to quit"


  user_input = gets.chomp.to_i
  break if user_input <= 0


  if (user_input == 1)

    puts "Wonderful!  Enter your question"
    question = gets.chomp

    puts "Great!  Now enter the answer"
    answer = gets.chomp

    puts "Lastly, assign this card to a category."
    category = gets.chomp

    new_card = Flashcard.new(question, answer, category)
    $deck << new_card

  end

  if (user_input == 2)
      $deck.each do |card|
      puts "#{card.question} - #{card.answer}"
    end
  end


    if (user_input == 3)
      puts "Please enter the number of the card you'd like to edit"
      $deck.select do |card|
        card == ((gets.chomp.to_i)+1)
          puts "Write your new question"
          question = gets.chomp
          puts "Write your new answer"
          question = gets.chomp
      end
    end

    if (user_input == 4)
      puts "Which card would you like to delete?"
      card_number = gets.chomp.to_i
      $deck.delete_at((card_number)-1)
    end

    if (user_input == 5)
      puts "Congratulations!  You got #{$correct.length} right!"
    end

    if (user_input == 6)
      puts "You answered these correctly: #{$correct}"
      puts "Better luck next time on these: #{$wrong}"
    end

    if (user_input == 7)
      $deck.each do |card|
      puts "#{card.question}"
      response = gets.chomp
      if (response == "#{card.answer}")
        $correct << response
      elsif
        $wrong << response
      end
    end

      if (user_input == 8)
        puts ""
        class Category < Flashcard
          def initialize(question, answer, category)
          super(name,age)
          @category = category
        end
      end
    end

  end

end
