require 'pry'
class Menu
  def self.display
    while 1
      puts "Choose one of the following:"
      puts "1 - Option 1"
      puts "2 - Option 2"
      puts "3 - Option 3"
      input = gets.chomp
      if ["1","2","3"].include? input
        self.select input
        break
      else
        puts "Invalid option."
      end
    end
  end
  def self.select number
    puts "You selected #{number}"
  end
end

Menu.display





binding.pry
end "thanks for playing"
