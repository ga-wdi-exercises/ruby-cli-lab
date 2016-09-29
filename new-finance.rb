require "pry"

class User
  attr_accessor :name, :balance, :transaction_history

def initialize name
  @name = name
  @balance = 0
  @transaction_history = []
end

def menu
    while true
      puts "Choose one of the following:"
      puts "1 - Desposit Money"
      puts "2 - Withdraw Money"
      puts "3 - View Transaction History"
      user_input = gets.chomp
      if user_input == "1"
        self.deposit   # condition to bring them to Desposit method
      elsif user_input == "2"
        self.withdraw  # condition to bring them to Withdraw method
      elsif user_input == "3"
        self.t_history  # to bring them to Transaction History
    break
  else
    puts "Invalid option."
  end
end
end

  def deposit
    puts "How much money would you like to deposit?"
    deposit_input = gets.chomp.to_i
    puts "You put in $#{deposit_input} in your bank acount"
    @balance = @balance + deposit_input
    puts "You have $#{@balance} in your account"
    @transaction_history << self
  end

  def t_history
    puts "You have made #{@transaction_history.length} transactions"
  end

  def withdraw
    puts "How much money would you like to withdraw?"
    withdraw_input = gets.chomp.to_i
    puts "You took out $#{withdraw_input} in your bank acount"
    @balance = @balance - withdraw_input
    puts "You have $#{@balance} in your account"
    @transaction_history << self
  end
end
# latoya = User.new("latoya")
# latoya = Transaction.new("mom", 10, "today","paying rent")

class Transaction
  attr_accessor :payee, :amount, :date, :category

def initialize payee, amount, date, category
  @payee = payee
  @amount = amount.to_i
  @date = date
  @category = category
end
end


binding.pry
puts "that's all, folks!"
