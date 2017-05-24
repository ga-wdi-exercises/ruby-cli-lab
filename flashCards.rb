require "pry"
class Flashcard 
	attr_accessor :front, :back
	def initialize

	@front = "front"
    @back = "back"
    @new_front = []
    @new_back = []

    @@default_cards = [@front, @back]
    @@new_cards = [@new_front, @new_back]
  end

	def self.current_card #This can be called on as "Flashcard.current_card"
		puts "Current Flash Cards"
		
		puts "Default game cards #{@@default_cards}"

		puts "Player made set #{@@new_cards}"
	end

		def create_flash new_front, new_back
			@new_front << new_front
			@new_back << new_back
		end

		def edit_flash

			puts "Choose if you would like to edit your front or back cards. Type \"back\" or \"front\""
			edit_input = gets.chomp
			card_index = []
			if edit_input == "front"
				@@new_cards[0].each_with_index {
					|card, index|
					hash[card] = index
					card_index = gets.chomp
				}
			else
				puts "Invalid option."
			end

		end

end
$flash = Flashcard.new()

print "
___  ____ ____ . ____    ____ _    ____ ____ _  _    ____ ____ ____ ___  ____
|__] |__| |  | ' [__     |___ |    |__| [__  |__|    |    |__| |__/ |  \ [__ 
|__] |  | |__|   ___]    |    |___ |  | ___] |  |    |___ |  | |  \ |__/ ___]
"


CHOICES = {
  1 => 'Create a new set of flash cards',
  2 => 'View all flash cards',
  3 => 'Edit a flashcard',
  4 => 'Delete a flashcard',
  5 => 'View score and answers',
}

def display
  loop do
    puts "Welcome player! Choose one of the following!"
    CHOICES.each do |h|
      puts '%d. %s?' % h
    end

    input = gets.to_i

    return input if CHOICES[input]
    puts 'Invalid option.' 
  end
end

def select number
  puts "#{number} selected!"
  if number == 1 
  	card_front = gets.chomp
  	card_back = gets.chomp
  	$flash.create_flash(card_front,card_back)
  	puts "These are your new cards! " 
  elsif number == 2
  	puts Flashcard.current_card
  end
end


choice = display
select(choice)



binding.pry
