require "pry"

class Menu


end


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

class Games
  attr_accessor :games

  def initialize(games = [])
    @games = games
  end

  def add_card_deck(card_deck)
    @card_deck << card_deck
  end
end


class Deck
  attr_accessor :card_deck

  def initialize(card_deck = [])
    @card_deck = card_deck
  end

  def add_card(card)
    @card << card
  end
end

class Cards
  attr_accessor :card

  def initialize(card = [])
    @card = card
  end

  def add_question(question)
    @question << question
  end  
end

class Question
  attr_accessor :card_front, :card_back, :category

  def initialize (card_front, card_back, catergory)
    @card_front = card_front
    @card_back = card_back
    @category = category
  end
end






lisa = Player.new("Lisa", "chips and dip")
math1 = Question.new("1 + 1 = ", "2", "Maths")
james = Player.new("James", "Skittles")
andy = Player.new("Andy", "pistachios")
alice = Player.new("Alice", "PB&J")
kanye = Player.new("Kanye", "sushi")
gaga = Player.new("Lady Gaga", "Reeses Pieces")
minnesota = Question.new("What is the capital of Minnesota?", "St. Paul", "State Capitals")


binding.pry
