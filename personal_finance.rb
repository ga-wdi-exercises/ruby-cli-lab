require_relative "data"

class Transaction
  attr_accessor :payee :amount :date :category :userid
  def initialize(payee, amount, date, category, userid)
  @payee = payee
  @amount = amount
  @date = date
  @category = category
  @userid = userid
  end
end

class Account
  attr_accessor :name :balance :transactions
  def initialize
    @balance = 0
    @transactions = []
  end
  def display
    loop do
      puts "Mavis Beacon's Personal Finance Simulator (c)1990 Omarbound Software Inc."
      puts "[D]eposit Funds"
      puts "[W]ithdraw Funds"
      puts "[T]ransactions"
      puts "[Q]uit"
      user_input = gets.chomp
      if user_input == "d"
        puts "You chose to make a deposit."
      elsif user_input == "w"
        puts "You chose to make a withdrawal."
      elsif user_input == "t"
        puts "You chose to view your transaction history."
      elsif (user_input == "q")
        puts "Goodbye!"
        break
      else
        puts "\e[H\e[2J"
        puts "Invalid option. Type [D] for a deposit, [W] for a withdrawal, [T] to view your transactions or [Q] to quit"
      end
  end
end


account = Account.new
account.transactions = data[:transactions].map do |transaction_hash|
return Transaction.new
end

def deposit
 puts "Enter your amount which you like to deposit"
 deposit_input = gets.chomp.to_i
 puts "You have deposited $#{deposit_input}"
 puts "You have a balance of $#{@balance}"
end

# def withdraw
#  puts "Enter your amount which you like to withdraw"
#  withdraw_input = gets.chomp.to_i
#  puts "You have withdrawn $#{withdraw_input}"
#  puts "You have a balance of $#{@balance}"
# end

# def transactions
#  puts "Enter your user ID PIN"
#  pin_input = gets.chomp.to_i
#  if pin_input == userid
#   return transactions
#  puts "You have a balance of $#{@balance}"
# end
