require "pry"

class Flashcard

  attr_accessor :questions, :answers

  def initialize questions, answers
    @questions = questions
    @answers = answers
    # @score = score
  end

end

class CardBox
    #create the card box
    attr_accessor :card_box

    def initialize
      @card_box = []
    end

    def new_card(questions, answers)
      @card_box << Flashcard.new(questions, answers)
    end

    def edit_card (new_question)
      index = @card_box.length - 1
      card = @card_box[index]
      card.questions = new_question
    end

    def delete_card
      @card_box.pop
    end
end

cat = Flashcard.new "Does a cat meow or bark?", "Meow"
deck = CardBox.new
deck.new_card("sdhjnslkjdfg", "sdhjshbdfg")
deck.edit_card("a new question")

binding.pry
puts "done"


# answer = gets.chomp
