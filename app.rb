require 'pry'
class Transaction
  @@all = []
  attr_accessor :payee, :amount, :date, :category
   def initialize(payee, amount, date, category)
         @payee = payee
         @amount = amount
         @date = date
         @category = category
         @@all << self
   end

   def self.all
     @@all
   end

   def self.find_by_amount amount
        @@all.select do |transaction|
          transaction.amount == amount
        end
    end

   def self.enter_details()
      puts("Enter a payee.")
      payee = gets.chomp
      puts("Enter an amount.")
      amount = gets.chomp
      puts("Enter a date.")
      date = gets.chomp
      puts("Enter a category.")
      category = gets.chomp
      self.new(payee,amount,date,category) #pass in amt, date, category as arguments
   end

   def display_details()
      puts "Payee: #@payee"
      puts "Amount: #@amount"
      puts "Date: #@date"
      puts "Category: #@category"
  end
end

#Created sample objects
Transaction.new("General Electric","50","9/27/16","Utilities")
Transaction.new("Honda","425","7/4/08","Car")

Transaction.find_by_amount("50")
#puts("Enter a payee.")
#payee = gets.chomp
#item3 = Transaction.new(payee,"","","")
#puts " No of transactions #@@no_of_transactions"
binding.pry
puts "stop pry bug"
