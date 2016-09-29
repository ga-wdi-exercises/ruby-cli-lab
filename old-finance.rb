require "pry"

class User
  attr_accessor :name, :balance, :transaction_history
  @@transaction_history = []
  @@balance = 0

  # c = Transaction.new(payee, amount, date, category)


def initialize name
  @name = name
  # @balance = balance
  # @transaction_history = transaction_history
end

def transaction payee, amount, date, category
  @payee = payee
  @amount = amount.to_i
  @date = date
  @category = category
end
end
# latoya = User.new("latoya")

class vhange name dont nest classes
  # attr_accessor :deposit, :withdraw

  def self.display
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
        self.transaction_history  # to bring them to Transaction History
    break
  else
    puts "Invalid option."
  end
end
end
end


  def deposit add_money
    puts "How much money would you like to deposit?"
    deposit_input = gets.chomp
    @add_money = @add_money + deposit_input.to_i
    puts "You have #{@add_money} in your account"
    @@transaction_history << self
  end

  def withdraw
  end

  def transaction_history
    puts "You have made #{@@transaction_history.length} transactions"
  end

# put everything in the menu class
#


end

# class Transaction
# enter add and sub stuff here
# @deposit = deposit
# @withdraw = withdraw


# end
binding.pry
puts "that's the end, folks!"
