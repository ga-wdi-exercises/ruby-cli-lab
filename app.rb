require "pry"

class UserAccount
  attr_accessor :username, :name, :transactions
  def initialize(username, name)
    @username = username
    @name = name
    @transactions = []
  end
  def add_transaction(payee, amount, date, category)
    new_transaction = {payee: payee,
            amount: amount,
            date: date,
            category: category}
    @transactions << new_transaction
  end
end


erica = UserAccount.new("norbsie", "Erica Norby")
erica.add_transaction("McDonalds", 10, "2/9/17", "Checking")


puts "Hello, Erica!"
puts "What would you like to do?"
puts "**************************"
puts "1: Add a transaction
2: View transaction history
0: Exit program"

option = nil

while option != 0
  
  option = gets.chomp.to_i

  if option == 1
    puts "Enter a payee"
    payee = gets.chomp
    puts "Enter an amount"
    amount = gets.chomp.to_i
    puts "Enter a date"
    date = gets.chomp
    puts "Enter a category"
    category = gets.chomp
    erica.add_transaction(payee, amount, date, category)
  end

  if option == 2
    puts erica.transactions
  end
end

binding.pry
