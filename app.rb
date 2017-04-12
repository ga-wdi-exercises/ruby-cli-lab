#Users should be able to enter their transactions (which have a payee, an amount, a date, and a category).
#They can see a list of all transactions, edit / delete transactions, and see their current balance.
#Users should be able to look at transactions by category (i.e. filtering), and see the total 'cost' of transactions in that category.

class Transaction
attr_accessor :payee, :amount, :date, :category

def initialize (payee, amount, date, category)
    @payee = []
    @amount = []
    @date = []
    @category = []
  end #def initialize
end #class Transaction

class Account
attr_accessor :transactions, :balance

def initialize
  @transactions = []
  @balance = 0
end #def initialize

def show_options
  puts '1 - enter new transaction'
  puts '2 - view previous transactions'
  puts 'exit - exit program'
  input = gets.chomp.to_i
  if(input == '1')
    def enter_new_transaction
      puts 'When was the transaction?'
      date = gets.chomp
      puts 'How much was the transaction?'
      amount = gets.chomp
      puts 'Where did you make this purchase?'
      payee = gets.chomp
      puts 'What was the transaction category?'
      category = gets.chomp
      @transactions.push(Transaction.new(amount, date, payee, category))
    end #def enter_new_transaction
  elsif (input == '2')
    puts "I'm 2"
  end #if
end #def show_options

  #
  # def view_past_transaction
  #   # transaction.each do |transaction|
  #     puts transaction
  end # def view_past_transaction
end #class Account

account = Account.new

loop do
  account.show_options
end #loop do
