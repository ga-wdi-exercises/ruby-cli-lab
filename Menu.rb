class Menu
    def initialize
      @cards = []
    end
    def display
      while 1
        puts "Choose one of the following:"
        puts "0 - View Cards"
        puts "1 - Create a new flashcard"
        puts "2 - Edit flashcard"
        puts "3 - Delete flashcard"
        puts "4 - View score/recent answers"
        puts "5 - View all cards"
        puts "6 - Quit"
        input = gets.chomp
        if ["0","1","2","3","4","5"].include? input
          select input
        elsif input === "6"
          break
        else
          puts "Invalid option."
        end
      end
    end

    def select number
      case number
      when '0'
        puts 'VIEW CARDS'
        view_cards
      when '1'
        puts 'CREATE NEW FLASHCARD'
        create_flashcard
      when '2'
        puts 'EDIT FLASHCARD'
        edit_flashcard
      when '3'
        puts 'DELETE FLASHCARD'
        delete_flashcard
      when '4'
        puts 'VIEW SCORE/RECENT ANSWERS'
        view_scores
      when '5'
        puts 'VIEW ALL FLASHCARDS'
        view_all_flashcards
      when '6'
        puts 'QUIT'
        quit_game
      end
    end

    def view_cards
      @cards.each do |card|
        puts "#{card.id} - #{card.front}"
      end
    end

    def create_flashcard
      puts "Please create a new flashcard.  Enter front:"
      front = gets.chomp
      puts "Enter back"
      back = gets.chomp
      id = @cards.length + 1
      new_card = Flashcard.new(id, front, back)
      @cards << new_card
      print @cards
    end

    def edit_flashcard
      puts "Enter Card Number"
      number = gets.chomp.to_i
      card = @cards.find do |card|
        card.id === number
      end
      puts "Enter your edits here. Enter front"
      card.front = gets.chomp
      puts "Enter back"
      card.back = gets.chomp
    end

    def delete_flashcard
      puts "Enter Card Number."
      number = gets.chomp.to_i
      @cards = @cards.delete_if do |card|
        card.id === number
      end
      puts @cards
    end

    def view_all_flashcards
      puts @cards.join(' ')
      el = gets.chomp
    end

    def quit_game
      puts "enter Control-C"
    end
end
