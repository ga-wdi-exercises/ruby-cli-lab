class Flashcard #this class creates, edits, and removes flashcards
  attr_accessor :id, :front, :back
  def initialize id, front, back
    @id = id
    @front = front
    @back = back
  end
  # def create_flashcard
  #   puts "Please create a new flashcard.  Enter input here#{@front} and here #{@back}"
  #   input = gets.chomp
  #   flashcards.push()
  # end
  # def edit_flashcard
  #   puts "Enter your edits here:"
  #   input = gets.chomp
  # end
  # def delete_flashcard
  #   puts "Are you sure you wish to delete this flashcard? y/n"
  #   input = gets.chomp
  #   if input == "y"
  #     flashcards.pop()
  #   end
  # end
end
