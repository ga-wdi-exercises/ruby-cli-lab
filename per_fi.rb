require "pry"

class Enter_Transaction
  attr_accessor :payee, :amount, :date, :category
    @@all = []

    def initialize
      puts "First, enter a payee."
        @payee = gets.chomp
      puts "Second, enter an amount."
        @amount = gets.chomp
      puts "Third, enter today's date."
        @date = gets.chomp
      puts "Lastly, enter your category."
        @category = gets.chomp
      @@all << self
      end

      def self.view
        return @@all

      end
  end

class Transaction_History < Enter_Transaction
  def self.history
      super (@@all)
    end
  end
class Current_Balance < Enter_Transaction
  def self.Balance
    @amount += input
  end
end

  class Menu
    def self.display
      while input 1 || 2 || 3
        puts "Choose one of the following:"
        puts "1 - New Transaction"
        puts "2 - Transaction History"
        puts "3 - Current Balance"
        input = gets.chomp.to_i
        if [1,2,3].include? input
          self.select input
          break
        else
          puts "Invalid option."
        end
      end
    end
    def self.select number
      puts "You selected #{number}"
      if number == 1
        puts "Enter Transaction"
        Enter_Transaction.new
      end
      if number == 2
        puts "Your Recent Activies"
        Transaction_History.new
      end
      if number == 3
        puts "Current Balance"
        Current_Balance.display
      end
    end
  end

  Menu.display












binding.pry
