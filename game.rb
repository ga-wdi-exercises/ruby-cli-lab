
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
    @score_right = 0
    @score_wrong = 0
    @score_total = 0
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
    card_num = gets.chomp.to_i
    card_num -= 1
    puts "Enter 'front' to edit front, 'back' to edit back"
    card_side = gets.chomp
    puts "Enter edited language"
    card_edit = gets.chomp
      if card_side == 'front'
        @cards[card_num].front = card_edit
      elsif card_side == 'back'
        @cards[card_num].back = card_edit
      end
  end
  def delete_card
    puts "Which card number would you like to delete?"
    card_num = gets.chomp.to_i
    card_num -= 1
    @cards.delete_at(card_num)
  end
  def play_card
    @cards.each_with_index do |item|
      puts "#{item.front}"
      input = gets.chomp
      if input == item.back
        @score_right += 1
        @score_total += 1
        puts "Correct!"
        puts "You are #{@score_right} for #{@score_total}"
      else
        @score_wrong += 1
        @score_total += 1
        puts "Incorrect"
        puts "You are #{@score_right} for #{@score_total}"
      end
    end
  end
  def view_score
    puts "Correct answers: #{@score_right}"
    puts "Inorrect answers: #{@score_wrong}"
    puts "Total answers: #{@score_total}"
  end
end
