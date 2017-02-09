# require "pry"
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

erica = UserAccount.new("norbsie", "Erica Norby", 400)

erica.add_transaction("Target",43,"02/07/2017","Entertainment")
erica.add_transaction("Safeway",29,"02/08/2017","Food")
erica.add_transaction("Starbucks",9,"02/08/2017","Food")
erica.add_transaction("Landlord",83,"02/09/2017","Bills")
erica.add_transaction("Mobil",22,"02/10/2017","Transportation")
erica.add_transaction("Amazon",18,"02/11/2017","Entertainment")
erica.add_transaction("Safeway",38,"02/11/2017","Food")
erica.add_transaction("Verizon",27,"02/14/2017","Bills")
erica.add_transaction("Target",30,"02/15/2017","Entertainment")

puts "Hello, Erica!"
puts "What would you like to do?"

option = nil

while option != 0
  puts "**************************"
  puts "1: Add a transaction"
  puts "2: View transaction history"
  puts "3: View budget status"
  puts "0: Exit program"

  option = gets.chomp.to_i

  if option == 1
    puts "Enter a payee"
    payee = gets.chomp.capitalize
    puts "Enter an amount"
    amount = gets.chomp.to_i
    puts "Enter a date - xx/xx/xxxx"
    date = gets.chomp
    puts "Enter a category - Bills, Food, Transportation, Entertainment"
    category = gets.chomp.capitalize
    erica.add_transaction(payee, amount, date, category)
  end

  if option == 2
    puts "**************************"
    puts "1: View all transactions"
    puts "2: Filter by category"
    choice = gets.chomp.to_i
    if choice == 1
      puts erica.transactions
    end
    if choice == 2
      puts "Enter a category"
      find_category = gets.chomp.capitalize
      filtered = erica.transactions.select { |transaction| transaction[:category] == find_category }
      amount_spent = filtered.map {|transaction| transaction[:amount]}
      puts filtered
      puts "You have spent $#{amount_spent.sum} in #{find_category}"
    end
  end

  if option == 3
    puts "$#{erica.balance}"
  end
end

# binding.pry
