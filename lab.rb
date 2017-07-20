class Menu
  def self.display
    while 1
      puts "Welcome to Ruby Bank 2.2.2."
      puts "please select from the following list of options:"
      puts "1 for current balance, 2 for transaction history, 3 to edit transactions and 4 to remove transactions"
      input = gets.chomp
      if ["1", "2", "3", "4"].include? input
        self.select input
        break
      else puts "Invalid, please select option from above list"
      end
    end
  end
  def self.select number
    puts "you selected #{number}"
  end
end
Menu.display
