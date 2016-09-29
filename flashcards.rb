class Flashcards
  attr_accessor :question, :answer, :id
  @@count = 0
  def initialize question, answer, id
    @id = @@count
    @question = question
    @answer = answer
    @@count += 1

  end
end
