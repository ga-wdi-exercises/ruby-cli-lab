class Flashcard
  attr_accessor :front, :back, :right, :wrong
  def initialize front, back
    @front = front
    @back = back
    @right = 0
    @wrong = 0
  end
end
