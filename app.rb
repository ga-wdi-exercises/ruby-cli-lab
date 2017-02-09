require "pry"

class UserAccount
  attr_accessor :username, :name, :transactions, :balance
  def initialize(username, name, budget)
    @username = username
    @name = name
    @transactions = []
    @balance = budget
  end
  def add_transaction(payee, amount, date, category)
    new_transaction = {payee: payee,
            amount: amount,
            date: date,
            category: category}
    @transactions << new_transaction
    @balance -= amount
  end
end


erica = UserAccount.new("norbsie", "Erica Norby", 300)


puts "Hello, Erica!"
puts "What would you like to do?"
puts "**************************"
puts "1: Add a transaction
2: View transaction history
3: Filter transaction history by category
4: View balance
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

  if option == 3
    puts "Enter a category"
    find_category = gets.chomp
    filtered = erica.transactions.select { |transaction| transaction[:category] == find_category }
    puts filtered
  end

  if option == 4
    puts "$#{erica.balance}"
  end
end

binding.pry
