class Transaction
  attr_accessor :name, :amount, :date, :category, :transactions

  def initialize
    @name = name
    @amount = 0
    @date = Time.now.strftime("%d/%m/%Y %H:%M")
    @transactions = []
  end

  finance_on = true
  while finance_on == true

    puts "Welcome to Personal Finance. How can we assist you today?"
    puts "1. Desposit"
    puts "2. Withdraw"
    puts "3. View Transaction History"
    puts "4. Edit Transactions."
    puts "5. Delete Transactions."
    puts "6. View Current Balance."
    # Doesn't recognize the method being called for some reason. Tried moving loop around, tried self. and without self. in both method name and conditional ¯\_(ツ)_/¯ smaller methods are working though, yay? Did not get to "edit" while trying to figure out why the thing is not starting.
  # def begin
    input = gets.chomp
    if input == "1"
      self.deposit
    elsif input == "2"
      self.withdraw
    elsif input == "3"
      self.transaction_history
    elsif input == "4"
      # did not get to edit
    elsif input == "5"
      self.delete_transaction
    elsif input == "6"
      puts @amount
    else
      puts "Invalid option."
    end
    finance_on == false
  # end

  def self.deposit
    puts "How much money would you like to deposit?"
    new_input = gets.chomp.to_i
    @amount = @amount + new_input
    puts {"Your balance is now $#{@amount}."}
    transactions << self
  end

  def self.withdraw
    puts "How much money would you like to withdraw?"
    new_input = gets.chomp.to_i
    @amount = @amount - new_input
    puts {"Your balance is now $#{@amount}."}
    transactions << {transaction: self, date: @date}
  end

  def self.transaction_history
    puts "You have total of #{transactions.length} transactions."
    puts transactions
  end

  def self.delete_transaction
    puts "Which transaction would you like to delete? Please input the number."
    puts transactions
    input = gets.chomp.to_i
    transactions.delete_at(input+1)
    puts "Transaction deleted."
  end

end
end
# end
# Transaction.new("John Smith", "100", "Debit")
# binding.pry

# gutted original menu

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
