require 'pry'
class Transaction
   @@no_of_transactions=0

   def initialize(payee, amount, date, category)
         @payee = payee
         @amount = amount
         @date = date
         @category = category
         @@no_of_transactions +=1         #will come back to transaction total
         puts "Total number of transactions: #@@no_of_transactions"  #will come back to transaction total
   end

   def enter_details()
    #  puts("Enter a payee.")
    #  payee = gets.chomp
      puts("Enter an amount.")
      amount = gets.chomp
      puts("Enter a date.")
      date = gets.chomp
      puts("Enter a category.")
      category = gets.chomp
   end

   def display_details()
      puts "Payee: #@payee"
      puts "Amount: #@amount"
      puts "Date: #@date"
      puts "Category: #@category"
  end
end

#Created sample objects
item1 = Transaction.new("General Electric","50","9/27/16","Utilities")
item2 = Transaction.new("Honda","425","7/4/08","Car")
puts("Enter a payee.")
payee = gets.chomp
item3 = Transaction.new(payee,"","","")
#puts " No of transactions #@@no_of_transactions"
binding.pry
puts "stop pry bug"
