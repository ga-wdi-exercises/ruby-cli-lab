require "pry"

class Menu
  def self.display
    while 1
      puts "Choose one of the following:"
      puts "Overview"
      puts "Accounts"
      puts "Transactions"
      input = gets.chomp
      if ["Overview","Accounts","Transactions"].include? input
        self.select input
        break
      else
        puts "Invalid option."
      end
    end
  end
  def self.select option
    puts "You selected #{option}"
  end
end

Menu.display

class Transactions
  attr_accessor :category, :amount, :payee, :date
  def initialize
    puts "Choose Category"
    @category = gets.chomp
    puts "Enter Trasaction Amount"
    @amount = gets.chomp
    puts "Payee Name"
    @payee = gets.chomp
    puts "Transaction Date"
    @date = gets.chomp
    @@all << self
  end
  def self.all
    @@all
  end
end

class Accounts
  attr_accessor :checking, :savings
  def initialize checking, savings
    @checking = checking
    @savings = savings
  end
end

class Category
  attr_accessor :groceries, :clothing, :entertainment, :miscellaneous
  def initialize
    @groceries = groceries
    @clothing = clothing
    @entertainment  = entertainment
    @miscellaneous = miscellaneous
  end
end

binding.pry
puts "last line"
