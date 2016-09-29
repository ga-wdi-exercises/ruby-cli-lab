require "pry"

class EnterTransaction
  attr_accessor :amount, :payee, :date, :category
  @@all = []
  def initialize
    puts "Enter amount"
    @amount = gets.chomp
    puts "Enter Payee"
    @payee = gets.chomp
    puts "Enter Date"
    @date = gets.chomp
    puts "Enter Category"
    @category = gets.chomp
    @@all << self
  end
  def self.history
    @@all
    end
  end


class Menu
  def self.display
    while 1
      puts "WELCOME TO PERSONAL FINANCE!"
      puts "Please select from the following:"
      puts "1 - Enter Transaction"
      puts "2 - Transaction History"
      puts "3 - Current Balance"
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
    puts "You picked #{number}"
    if number == "1"
      p "Welcome to Enter Transaction"
      EnterTransaction.new
    end
    if number == "2"
      p "Welcome to Transaction History"
      TransactionHistory.new
    end
    if number == "3"
      p "Welcome to Account Balance"
      AccountBalance.new
    end
  end
end


Menu.display
binding.pry

puts "last line"
