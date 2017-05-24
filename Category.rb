class Category
attr_accessor :name, :flash_cards


  def initialize(name)
    @name = name
    @flash_cards = []
  end

  def add_flashcard(flashcard)
    @flash_cards << flashcard
  end

  def display_flashcards
    @flash_cards.each do |flashcard|
      puts flashcard.question
    end
  end


end
