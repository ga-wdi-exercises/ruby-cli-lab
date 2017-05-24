require 'pry'
class PersonalTransaction
def initialize(payee, amount, date, category)
  attr_reader :payee
  @payee = payee
  @amount = amount
  @date = date
  @category = []

  @saving_balance = []
  @add_transaction = []
  @single_transaction =
  @type_of_transaction
end

  class Single_transaction
  def new_transaction(saving_balance, amount)
    @add_transaction.push(saving_balance + amount)
    puts "Your total saving balance is #{saving_balance} and your new transaction is #{amount}."
    
  end

class Menu
  def self.display
    while 1
      puts "Choose one of the following:"
      puts "1 - Saving Transactions"
      puts "2 - Checking Transactions"
      input = gets.chomp
      if ["1","2"].include? input
        self.select input
        break
      else
        puts "Invalid option."
      end
    end
  end
  def self.select number
    puts "You selected #{number}"
    Single_transaction.display
  end
end

  def get_balance(category_one, category_two)
    @category.push(category_one + category_two)
  end



  def transactions(single_transaction, transactions)
    @transactions.push(single_transaction += 1)
  end

  def total_transaction(transactions)
    @transactions.inject{:+}
  end

  Menu.display

end
end

binding.pry
