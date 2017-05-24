              # Skip to content # This repository # Search # Pull requests # Issues # Gist #  @xgironx #  Unwatch 1 #   Star 0 #   Fork 63 xgironx/ruby-cli-lab # forked from ga-wdi-exercises/ruby-cli-lab #  Code  Pull requests 0  Projects 0  Wiki  Pulse  Graphs  Settings # Branch: x Find file Copy pathruby-cli-lab/flash_cards.rb # e8302f4  10 minutes ago # @xgironx xgironx created class to create flashcards # 1 contributor # RawBlameHistory # 54 lines (51 sloc)  1.56 KB # INITIALIZE VARS # flashcards.each.to_a do |each_flashcard| #                     each_flashcard[:number] #                     each_flashcard[:right] = 0 #                     each_flashcard[:wrong] = 0 #                     score = 0 #                 end # options = [ #   {selection: "1. New flashcard"    }, #   {selection: "2. View flashcard"   }, #   # {selection: "3. Edit flashcard"   }, #   # {selection: "4. Delete flashcard" }, #   # {selection: "5. What's my score?" } # ]
require 'pry'
puts "1. New Flashcard"
puts "Enter the option number."
input = gets.chomp.to_i
if input == 1
  puts "Enter the card front."
  input_front = gets.chomp
  puts "Enter the card back."
  input_back = gets.chomp
end
              # elsif input == '2' puts "2.  View flashcard"          puts "2"*30 #      view_flashcard(flashcard_number) # elsif input == '3' puts "3.  Edit flashcard"          puts "3"*30 #     edit_flashcard(flashcard_number) # elsif input == '4' puts "4.  Delete flashcard"        puts "4"*30 #     delete_flashcard(flashcard_number) # elsif input == '5' puts "5.  What's my score?"        puts "5"*30 #     show_my_score() # elsif input == '6' puts "6.  Get me outta here"       puts "6"*30 #     get_me_outta_here() # end

class Flashcard
  @@deck = []
  attr_accessor    :front, :back
  def initialize    input_front,  input_back
    puts "I'm inside of class Flashcard constructor"
    @front        = front
    @back         = back
    @@deck.push(self)
    p @@deck
    puts @@deck
  end
end

flashcardX = Flashcard.new('arriba','hurry');
              # # deck.push(flashcardX) # puts deck # puts flashcardX
              # Contact GitHub API Training Shop Blog About
              # © 2017 GitHub, Inc. Terms Privacy Security Status Help
