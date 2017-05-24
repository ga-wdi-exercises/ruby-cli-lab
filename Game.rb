require_relative 'Flashcard.rb'

class Game
    attr_accessor :deck
    def initialize
        @deck = []
    end

    def add_new_card
        puts "enter a question"
        front = gets.chomp
        puts "Whats the answer?"
        back = gets.chomp
        new_flash_card = Flashcard.new(front, back)
        puts new_flash_card
        @deck.push(new_flash_card)
    end

    def view_cards
        @deck.each do |card|
            puts (card.front + "," + card.back)
        end
    end

    def edit_cards
        puts "Please enter card index you would like to change"
        @deck.each_with_index do |card, index|
            puts "index #{index}: #{card.front}, #{card.back}"
        end
        index_number = gets.chomp.to_i
        selected_card = @deck[index_number]
            puts "#{selected_card} Ok which part would you like to change? front or back?"
            side = gets.chomp
            side_value = (side == "front") ? selected_card.front : selected_card.back
            puts "Ok what would you like to replace this with?"
            new_input = gets.chomp
            if side == "front"
                selected_card.front = new_input
            else
                selected_card.back = new_input
            end
            


    end


    def delete_cards
        @deck.delete
    end

    def play_game
        score = 0
        i = 0
        @deck.each do |card|
            puts "What team does #{card.front} play for?"
            guess = gets.chomp
            if guess == card.back
                score +=1
                puts "Correct He is a member of the #{card.back}. You have a score of #{score} out of #{i+=1}"
            elsif
                puts "Come on man.  Step your game up"
            end
        end
    end

    def score
        puts score
    end

    def display
        while true
            puts "This is a flashcard game on the NBA. Choose one of the following:"
            puts "Type c - Create a new flashcard"
            puts "Type v - View all flashcards"
            puts "Type e - Edit all flashcards"
            puts "Type d - Delete all flashcards"
            puts "Type s - View score/recent answers"
            puts "Type p - Play"
            puts "Type q - Quit game"
            input = gets.chomp
            if input == "c"
                add_new_card
            elsif input == "v"
                view_cards
            elsif input == "e"
                edit_cards
            elsif input == "d"
                delete_cards
            elsif input == "p"
                play_game
            elsif input == "s"
                puts score
            elsif input == "q"
                break
            end
        end
    end
end
