require 'pry'

class Menu
  def initialize(payee, amount, date, category)
    attr_reader :payee
    @payee = payee
    @amount = []
    @date = []
    @category = []

    @saving_balance = 0
    @add_transaction = []
    @type_of_transaction
  end

  def self.display
      puts "Choose one of the following:"
      puts "1 - Saving Transactions"
      puts "2 - Checking Transactions"
      @@input = gets.chomp
      if ["1","2"].include? @@input
        self.select @@input
      else
        puts "Invalid option."
      end
    end

  def self.select number
    puts "You selected #{number}"
    if @@input == "1"
      Menu.secondisplay
    end
  end

  def self.secondisplay
      puts "Choose one of the following:"
      puts "1 - Payee"
      puts "2 - Amount"
      puts "3 - Date"
      puts "4 - Category"
      puts "5 - Transactions"
      @@input = gets.chomp
      if ["1","2", "3", "4", "5"].include? @@input
        self.select2 @@input
      else
        puts "Invalid option."
      end
  end

  def self.select2 number
    puts "You selected #{number}"
    if @@input == "5"
      Menu.transactions
    end
  end

  def self.transactions
      puts "Choose one of the following:"
      puts "1 - Edit transaction"
      puts "2 - Delete transaction"
      puts "3 - See current transaction"
      @@input = gets.chomp
      if ["1","2", "3"].include? @@input
        self.select3 @@input
      else
        puts "Invalid option."
      end
  end

  def self.select3 number
    puts "You selected #{number}"
    if @@input == "5"
      Menu.current_transaction
    end
  end

  def current_transaction(saving_balance, amount)
    @add_transaction.push(saving_balance + amount)
    puts "Your total saving balance is #{saving_balance} and your new transaction is #{amount}."
  end

end

Menu.display

binding.pry
