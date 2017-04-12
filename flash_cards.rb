deck = []
correct = []
wrong = []
categories = []


class Flashcard
  attr_accessor :question :answer

  def initialize (question, answer)
    @question = question,
    @answer = answer
  end
end

puts "Welcome to Flash Card Bonanza!  What would you like to do?"
