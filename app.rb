require 'pry'

Users should be able to enter their transactions (which have a payee, an amount, a date, and a category).
They can see a list of all transactions, edit / delete transactions, and see their current balance.
Users should be able to look at transactions by category (i.e. filtering), and see the total 'cost' of transactions in that category.

class Transaction
attr_accessor :payee, :amount, :date, :category

  def initialize
    @payee = payee
    @amount = amount
    @date = date
    @category = category

class Account
attr_accessor :transactions, :balance

  def initialize
    @transactions = []
    @balance = 0
  end

  def show_options
      puts 'enter option'
      puts '1 - enter new transaction'
      puts '2 - view previous transactions'
      puts 'exit - exit program'
      input = gets.chomp
      if(input == '1')
        enter_new_transaction
      end
  end

  def enter_new_transaction
    puts 'enter transaction amount'
    amount = gets.chomp
    puts 'enter transaction category'
    category = gets.chomp
    puts 'credit or debit (c/d)'
    type = gets.chomp == 'c' ? 'credit' : 'debit'
    @transactions.push(Transaction.new(amount, category, type))
  end
end


account = Account.new

loop do
  account.show_options
end


binding 'pry'
