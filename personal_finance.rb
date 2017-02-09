# require "pry"
# puts "Please enter the name of payee, amount and category."


class Transaction
  attr_accessor :name, :amount, :date, :category, :transactions

  def initialize
    @name = name
    @amount = 0
    @date = Time.now.strftime("%d/%m/%Y %H:%M")
    @transactions = []
  end

  finance_on = true
  # while finance_on == true

  while finance_on == true
  def begin
      puts "Welcome to Personal Finance. How can we assist you today?"
      puts "1. Desposit"
      puts "2. Withdraw"
      puts "3. View Transaction History"
      puts "4. Edit Transactions."
      puts "5. Delete Transactions."
      puts "6. View Current Balance."
      input = gets.chomp
      if input == "1"
        self.deposit
      elsif input == "2"
        self.withdraw
      elsif input == "3"
        self.transaction_history
      elsif input == "4"

      elsif input == "5"
        self.delete_transaction
      elsif input == "6"

      else
        puts "Invalid option."
      end
    end
    finance_on == false

    def deposit
      puts "How much money would you like to deposit?"
      new_input = gets.chomp.to_i
      @amount = @amount + new_input
      puts {"Your balance is now $#{@amount}."}
      transactions << self
    end

    def withdraw
      puts "How much money would you like to withdraw?"
      new_input = gets.chomp.to_i
      @amount = @amount - new_input
      puts {"Your balance is now $#{@amount}."}
      transactions << {transaction: self, date: @date}
    end

    def transaction_history
      puts "You have total of #{transactions.length} transactions."
      puts transactions
    end

    def delete_transaction


  end

end
end
# end
# Transaction.new("John Smith", "100", "Debit")
# binding.pry

#   puts "Welcome to Personal Finance. How can we assist you today?"
#   options = [
#     {selection: "1. Deposit."},
#     {selection: "2. Withdraw"},
#     {selection: "3. View All Transactions."},
#     {selection: "4. Edit/ Transactions."},
#     {selection: "5. Delete Transactions."},
#     {selection: "6. View Current Balance."},
#     {selection: "7. View Transactions By Category."}]
#   options.each {|option| puts option[:selection]}
#   puts "Enter the option number."
# input = gets.chomp
#
# if input == "1"
#   self.deposit
# elsif input == "2"
#   self.withdraw
# elsif input == "3"
#   if transactions == []
#     puts "No transaction history."
#   else
#     puts transactions
#   end
#
# elsif input == "4"
#
# elsif input == "5"
#
# elsif input == "6"
#
# elsif input == "7"
#
# else
#   puts "Invalid option."
# end
# break if input == "exit"
# break
