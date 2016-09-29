require 'pry'
# require_relative "data"


  class Flashcard
    attr_accessor :front, :back, :flashcards_box
    @@flashcards_box = []


    def self.view_all_cards
      @@flashcards_box = []
    end
    def initialize front, back
      @front = front
      @back = back
      @@flashcards_box << self
    end
    def add_card new_card, quantity
      @flashcards_box << {name: new_card, quantity: quantity}
    end

    def edit_card front, back
      @front = front
      @back = back
    end

    def delete_card
      @flashcards_box.pop
    end
    def self.flashcards_box
      @@flashcards_box
    end
  end

Flashcard.new "Moldova", "It's been a good day in Chisinau!"
Flashcard.new "Romania", "It's been raining in  Bucharest!"
Flashcard.new "USA", "DC"
Flashcard.new "District of Columbia", "The Capital!"
