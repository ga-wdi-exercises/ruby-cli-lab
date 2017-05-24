# require "pry"

class FlashCard
  attr_accessor :front, :back, :cards
  @@all = []

  def initialize front, back
    @front = front
    @back = back
    @cards = []
    @@all.push(self)
  end


  def self.all
     @@all
end
end

card1 = FlashCard.new("Na", "Sodium")
card2 = FlashCard.new("H", "Hydrogen")
card3 = FlashCard.new("S", "Sulfur")
card4 = FlashCard.new("Fe", "Iron")


while 1
puts "This is a FlashCard game on Periodic Table!"
puts "Enter 1 to add card"
puts "Enter 2 to view all cards"
puts "Enter 3 to edit card"
puts "Enter 4 to delete card"
puts "Enter 5 to play"
puts "Enter 6 to exit"
input = gets.chomp.to_i
if input == 1
    p "enter a front"
    front = gets.chomp
    p "enter a back"
    back = gets.chomp
    p FlashCard.new(front,back)

elsif input ==2
     FlashCard.all.each do |card|
       puts (card.front + ", " + card.back).inspect
     end
elsif input == 3
  puts "Looks like you want to edit the content. Enter the word you would like to change"
    FlashCard.all.each do |card|
      puts (card.front + ", " + card.back).inspect
    end
    word = gets.chomp
    FlashCard.all.each do |card|
      if word == ( card.front || card.back)
        puts "What is the new word?"
        new_word = gets.chomp
        puts new_word
        # replace current-word with new_word
        # puts "The most updated card is " + "[" + new_word + ", " + card.back + "]"
      end
end

elsif input == 4
  puts "Which card would you like to delete? Enter the number"
  i = 0
  FlashCard.all.each do |card|
    puts ( (i+=1).to_s + ":"+card.front + ", " + card.back).inspect
  end
    number = gets.chomp
    index = number.to_i
    deck = FlashCard.all
    deck.delete_at(index-1)
    puts "The remaining cards :"
    FlashCard.all.each do |card|
      puts (card.front + ", " + card.back).inspect
    end

    # puts number.to_s
    # card = number.to_i



elsif input == 5
  score = 0
  i = 0
  j = 0
  FlashCard.all.each do |card|
    puts " Question " + (i+=1).to_s + ": What is " + card.front + "?"
      ans = gets.chomp
      if ans == card.back
        score += 1
        puts "Yes! You got " + score.to_s + " out of "+ (j+=1).to_s + " correct!"
      else
      puts "Oops! Try again next time"
      puts "You got " + score.to_s + " out of "+ (j+=1).to_s + " correct!"
    end
end
#
elsif input == 6
  break

end
end


# elsif input == 5
#   FlashCard.all.each do |card|
#     puts





# binding.pry
# puts "asd"
