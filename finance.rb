require "pry"

class User
  attr_accessor :name, :balance, :transaction_history
  @@transaction_history = []
  @@balance = 0

def initialize name, balance, transaction_history
  @name = name
  @balance = balance
  @transaction_history = transaction_history
end

def transaction payee, amount, date, category
  @payee = payee
  @amount = amount.to_i
  @date = date
  @category = category
end

class Menu
  def self.display
    while true
      puts "Choose one of the following:"
      puts "1 - Desposit Money"
      puts "2 - Withdraw Money"
      puts "3 - View Transaction History"
      user_input = gets.chomp
      if user_input = "1"
        self.deposit user_input  # condition to bring them somewhere else
      elsif user_input = "2"
        self.withdraw user_input # condition to bring them somwhere else, can be other class
      elsif user_input = "3"
        self.transaction_history user_input  # contion to bring them somwerhe else, transaction class?
    break
  else
    puts "Invalid option."
  end
end
end
end

  def deposit
  end

  def withdraw
  end

  def transaction_history
    puts "You have made #{@@transaction_history}.length transactions"
  end

# put everything in the menu class
#

end
end







latoya = User.new("Latoya", 0, [])

end

# class Transaction
# enter add and sub stuff here
# @deposit = deposit
# @withdraw = withdraw


# end
binding.pry
puts "that's the end, folks!"
