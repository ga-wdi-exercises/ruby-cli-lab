class Account 
	attr_accessor :payee, :amount, :date, :category
	@@transaction = []
	@@balance = 0

	def initialize 
		@balance = 0
	end

	def show_options
      puts 'enter option'
      puts '1 - enter new transaction'
      puts '2 - view previous transactions'
      puts 'exit - exit program'
      input = gets.chomp
   end
end

class Transaction < Account
	
	def initialize
	@transaction = []
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
transaction = Transaction.new

loop do
	show_options
	enter_new_transaction
end
