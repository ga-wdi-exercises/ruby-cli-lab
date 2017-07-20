
class Flashcard
  attr_accessor :front, :back
  def initialize(front, back)
    @front = front
    @back = back
  end
end

class Game
  attr_accessor :front, :back, :cards
  def initialize
    @cards = []
  end
  def create_card
    puts "Enter a movie character for the front of the flashcard"
    front = gets.chomp
    puts "Enter the movie for the back of the flashcard"
    back = gets.chomp
    @cards << Flashcard.new(front, back)
  end
  def view_card
    puts "#{@cards.length} in deck:"
    @cards.each_with_index do |item, index|
      index += 1
      puts "card num: #{index}, card front: #{item.front}, card back: #{item.back}"
    end
  end
  def edit_card
    puts "Which card number would you like to edit?"
    card_num = gets.chomp
    card_num = card_num.to_i
    card_num -= 1
    puts "Enter 'front' to edit front, 'back' to edit back"
    side_edit = gets.chomp
    puts "Enter edited language"
    new_edit = gets.chomp
      if side_edit == 'front'
        @cards[card_num].front = new_edit
      elsif side_edit == 'back'
        @cards[card_num].back = new_edit
      end
  end
  def delete_card
    @cards.pop
    puts "Card deleted"
  end
end
