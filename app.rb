# require "pry"

require_relative "Game.rb"
require_relative "Flashcard.rb"
require_relative "Category.rb"

#Menu class

  #view/edit all categories or flashcards
  #lets play!

#category_list class
  #make new category
  #list cagegories


#category_each class
  #view flash cards
  #add flash card
  #remove flash card
# class Category_List
#   @@categories = ["Javascript","Ruby","Git"]
#
#   def self.add_category
#     puts "Enter a cateogory name"
#     input = gets.chomp
#     repeated_category = @@categories.select do |category|
#       category == input
#     end
#     if repeated_category.length > 0
#         puts "Category already there, fool"
#         self.add_category
#     else
#       @@categories << input
#     end
#   end

#   def self.display_categories
#       @@categories.each do |category|
#         puts "\n" + category
#       end
#       puts "\n" + "Enter category name to edit flashcards"
#       puts "Enter 'add' to add a new category"
#       input = gets.chomp
#       if input == 'add'
#         Category_List.add_category
#       end
#   end
# end
# #
# #
#
# class Menu
#   def self.display_menu
#     puts "Choose one of the following by typing the number:"
#     puts "1 - View/edit all categories or flashcards"
#     puts "2 - Let's Play"
#     input = gets.chomp.to_i
#     if input == 1
#       Category_List.display_categories
#     elsif input == 2
#       puts '2'
#     else
#       display_menu
#     end
#   end
# end
#
# Menu.display_menu

game = Game.new

js = Category.new('JavaScript')
js.add_flashcard(Flashcard.new('What is functional programming', '....answer'))
game.add_category(js)

loop do
  game.display_menu
end

# binding.pry
#
# puts 'end of file'
