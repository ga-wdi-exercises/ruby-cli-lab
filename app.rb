require "pry"

class Player
  attr_accessor :name, :favorite_food

  def initialize (name, favorite_food)
    @name = name
    @favorite_food = favorite_food
  end

  def greeting
    "Hi #{@name}.  I see you like to eat #{@favorite_food}.  Time for FLASHCARDS!"
  end
end



class Game

end



class Menu



end



class Cards
  attr_accessor :card_front, :card_back

  def initialize (card_front, card_back)
    @card_front = card_front
    @card_back = card_back
  end
end






lisa = Player.new("Lisa", "chips and dip")

binding.pry
