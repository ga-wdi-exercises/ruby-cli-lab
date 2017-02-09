# require "pry"
puts "Please enter the name of payee, amount and category."


class Transaction
  attr_accessor :name, :amount, :date, :category, :transactions

  def initialize
    @name = name
    @amount = 0
    @date = Time.now.strftime("%d/%m/%Y %H:%M")
    @transactions = []
  end
  finance_on = true
  while finance_on = true

  def begin
    while true
      puts "Welcome to Personal Finance. How can we assist you today?"
      options = [
        {selection: "1. Deposit."},
        {selection: "2. Withdraw"},
        {selection: "3. View All Transactions."},
        {selection: "4. Edit/ Transactions."},
        {selection: "5. Delete Transactions."},
        {selection: "6. View Current Balance."},
        {selection: "7. View Transactions By Category."}]
      options.each {|option| puts option[:selection]}
      puts "Enter the option number."
    break
    input = gets.chomp

    if input == "1"
      self.deposit
    elsif input == "2"
      self.withdraw
    elsif input == "3"
      if transactions == []
        puts "No transaction history."
      else
        puts transactions
      end

    elsif input == "4"

    elsif input == "5"

    elsif input == "6"

    elsif input == "7"

    else
      puts "Invalid option."
    end

    def deposit
      puts "How much money would you like to deposit?"
      new_input = gets.chomp.to_i
      @amount = @amount + new_input
      puts {"Your balance is #{@amount}."}
    end

    def withdraw
      puts "How much money would you like to withdraw?"
      new_input = gets.chomp.to_i
      @amount = @amount + new_input
      puts {"Your balance is #{@amount}."}
    end

  end

  break if input == "exit"
end

# Transaction.new("John Smith", "$100", "Debit")
# binding.pry
