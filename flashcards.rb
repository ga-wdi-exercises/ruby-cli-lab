class Flashcard
  attr_accessor :number, :front, :back
  def initialize number, front, back
    @number = number
    @front = front
    @back = back
  end

end

class MakeCard
  def initialize
    @cards = []
  end

  def new_flash_card
    puts "enter clue"
    front_card = gets.chomp
    puts "enter answer card"
    back_card = gets.chomp
    number = @cards.length + 1
    new_card = Flashcard.new(number, front_card, back_card)
    @cards << new_card
  end

  def display_card
    @cards.each do |card|
      puts "#{card.number} - front: #{card.front}, back: #{card.back}"
    end
  end

  def edit_card
    puts "enter card number to edit"
    card_num = gets.chomp.to_i
    selected_card = @cards.find do |card|
      card.number == card_num
    end
    puts "Edit front: "
    new_front = gets.chomp

    puts "Edit back: "
    new_back = gets.chomp

    selected_card.front = new_front
    selected_card.back = new_back
  end

  def delete_card
    @cards.pop
  end
end

class Menu
  @@gMakeCard = MakeCard.new
  def self.display
    while 1
      puts "Fun with Flashcard!"
      puts "Enter 1 to create a flashcard"
      puts "Enter 2 to view flashcards"
      puts "Enter 3 to edit flashcard"
      puts "Enter 4 to delete flashcard"
      puts "Enter 5 to play cards"
      puts "Enter 6 to view score"
      input = gets.chomp
      if input == "1"
        @@MakeCard.new_flash_card
      elsif input == "2"
        @@MakeCard.display_card
      elsif input == "3"
        @@MakeCard.edit_card
      elsif input == "4"
        @@MakeCard.delete_card
      end
    end
  end
end

Menu.display
# require "pry"
# class Menu
#   attr_accessor :frontCard,:back,:menu
#   @@deck
#   def initiallize (frontCard,back,menu)
#     @frontCard
#     @back
#     @correct
#     @menu
#   @@deck<<self
#   end
# cards = []
#   puts "#{frontCard.length} fr so far. Enter name or type start"
#
#   frontCard = gets.chomp
#   while frontCard != []
#   cards.push({name: frontCard})
#   puts "#{frontCard} has been added, there are now #{cards.length}. Enter name or type start"
#   # print players
# frontCard = gets.chomp
#   end
#   def self.display
#     while 1
#       puts "Choose one of the following:"
#       puts "1 - Create a card 1"
#       puts "2 - View a card 2"
#       puts "3 - Edit a card 3"
#       puts "4 - Delete a flashcard 4"
#       puts "5 - View score/recent answers 5"
#       input = gets.chomp
#       if ["1","2","3","4","5"].include? input
#         self.select input
#         break
#       else
#         puts "Invalid option."
#       end
#     end
#   end
#   def self.select number
#     puts "You selected #{number}"
#   end
# end
#
#
#
# Menu.display
#
#
# class Flashcard
#   attr_accessor :front, :back
#   def initialize front, back
#     @front = front
#     @back = back
#   end
# end
#
# Flashcard.new "Buenos Dias", "Good morning"
#
#
#
#
# #
# class Flashcard
#   attr_accessor :front,:back,:menu
#   @@deck
#   def initiallize (front,back,menu)
#     @front
#     @back
#     @correct
#     @menu
#   @@deck<<self
#   end
#
#   def menu
#     user_input =
#     until (user_input == 1 || user_input == 2 || user_input == 3 || user_input == 4 || user_input == 5)
#       puts "Create a new flashcard [press 1], View all flashcards [press 2], Edit a flashcard [press 3], Delete a flashcard [press 4], View score/recent answers [press 5]: "
#       user_input = gets.chomp.to_i
#     end
#     user_input == 1 ? import_dict('Enter front clue') : import_dict('Enter back answer')
#   end
#   def create
#     puts "Enter clue #{@front}"
#     front = gets.chomp
#     puts "Enter answer #{@back}"
#     back = gets.chomp
#     deck << Card.new(front, back)
#   end
# end
# binding.pry
# puts "chicken dance"
# def check_answer(input, val)
#    @correct += 1 if (input == val)
# end
#
#
# # def ask_questions(dict)
# #   dict.each_with_index do |(key, val), i|
# #     print "Question #{i+1}: #{key} is "
# #     input = gets.chomp
# #
# #     if check_answer(input, val)
# #        puts "Correct! #{@correct} of #{i+1} correct.\n\n"
# #     else
# #       print "Sorry, the correct answer is #{val}."
# #       print " #{@correct} of #{i+1} correct.\n\n"
# #     end
# #   end
# # end
#
# def ask_questions
#
# def print_results(dict)
#   puts "-------------------------------------"
#   puts "Your final score: #{@correct} of #{dict.length}."
#   puts "Below is a list of words in the quiz: "
#   dict.each { |key, val| puts "#{key} --- #{val}" }
#   puts "-------------------------------------\n\n"
# end
#
# end
#
# Flashcard.new('','')
# nayana = Person.new('Nayana', 29)
# andy = LoudPerson.new('Andy', 25)
# mirch = VeryLoudPerson.new('Mirch', 28)
# ed = QuitePerson.new('Ed', 28)
