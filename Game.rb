# require_relative "Category.rb"

class Game
attr_accessor :categories

    def initialize
      @categories = []
    end

    def add_category(category)
      @categories << category
    end

    def display_categories
      if @categories.length == 0
        puts "No categories"
      else
        @categories.each { |category|
        puts "    -#{category.name}"
      }
      end
    end


    def display_menu
      puts "Choose one of the following by typing the number:
            1 - Add category
            2 - Add flashcard
            3 - View categories
            4 - View flashcards
            5 - Let's Play"
      input = gets.chomp.to_i
      if input == 1
        display_categories
      elsif input == 2
        puts "Enter a category name"
        category_input = gets.chomp
        new_category = Category.new(category_input)
        add_category
      elsif input == 3
        puts "Enter a question"
        user_question = gets.chomp
        puts "Enter an answer"
        user_answer = gets.chomp
        new_card = Flashcard.new(user_question,user_answer)
        puts "choose a category for this flashcard"
        display_categories
        user_category = gets.chomp
        @categories.each do |category|
          if user_category == category.name
            category.add_flashcard(new_card)
          else
            puts "Choose a listed category or make a new category for your card before adding it."
          end
        end
        elsif input == 4
        display_categories
        user_category = gets.chomp
        @categories.each do |category|
            puts category
          if user_category == category.name
            category.display_flashcards
          else
            puts "Please choose from the list."
          end
        # puts "which category would like to see the cards for?"
          # JavaScript.display_flashcards
        end
      end
      end
  end

# binding.pry
#
# puts 'end of file'
