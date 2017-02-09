require "pry"
# class Menu
#   attr_accessor :name, :age
#
#
#   def initialize(name,age)
#     @name = name
#     @age = age
#
#   end
#
#   def get_name
#     "Hello my name is #{@name}"
#   end
#
#  def get_age
#    "My age us #{@age}"
#  end
#
# end
while true
puts "Choose one of the following"
puts  "1 create your own flash card"
puts  "2 play"
# puts "2 - Option 2"
# puts "3 - Option 3"
input = gets.chomp
if input == "1"
  puts "okay create, your own flash card!"

end

class Flashcard
  attr_accessor :front, :back

  def initialize front, back
    @front = front
    @back = back
    #instanciating the class
  end
end
puts "lets play flashcards!"
score_var = 0
empy_deck = []



question = Flashcard.new "capital of idaho", "boise"
question2 = Flashcard.new "Who was the second President?", "john adams"
question3 = Flashcard.new "How many continents are there?", "7"
question4 = Flashcard.new "Who is the all time home run leader?", "hank aaron"
answers = [question,question2,question3,question4]
# answers.shuffle

while true
  answers.each do |answer|
    puts answer.front

  response = gets.chomp

  if response.downcase == answer.back.downcase
    puts "correct!!!!"
    score_var += 1
    puts "Here is your score #{score_var}"
  else
    puts "this is not correct!"
    score_var -= 1
    puts "Here is your scroe #{score_var}"
   end
end


#use inspect to check what has passed into the array
# puts hello.inspect


end# travis = Menu.new("travis",25)
binding.pry
