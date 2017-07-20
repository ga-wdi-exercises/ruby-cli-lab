class Flashcard
  attr_accessor :front, :back
  def initialize front, back
    @front = front
    @back = back
  end
  def display
    puts "#{@front}"
    puts "What is the answer?"
    answer = gets.chomp
    puts "#{@back}"
  end
end
