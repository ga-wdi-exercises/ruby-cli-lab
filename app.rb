require 'pry'

class Transaction
	attr_accessor :payee, :amount, :date, :category
	def initialize(payee, amount, date, category)
		@payee = payee
		@amount = amount
		@date = date
		@category = category
	end

	def list_payee
		puts "This was paid to #{payee}"
	end
	def list_amount
		puts "The amount paid was #{amount}"
	end
	def list_date
		puts "This was paid on #{date}"
	end
	def list_category
		puts "The category of spending was #{category}"
	end

end


class Account
	attr_accessor :transactions, :balance
	def initialize
		@transactions = []
		@balance = 0
	end

	def menu
		puts "Welcome.  Enter 1 to enter a new transaction.  Enter 2 to view all transactions."
		menu_choice = gets.chomp.to_i
		if menu_choice == 1
			new_transaction
		elsif menu_choice == 2
			list_all_transactions
		end
	end

	def new_transaction
	puts "Enter the payee (just the name)"
	payee = gets.chomp
	puts "Enter the amount spent (just the number)"
	amount = gets.chomp.to_i
	puts "Enter the date (as number mmddyy)"
	date = gets.chomp.to_i
	puts "Enter the category (just the word)"
	category = gets.chomp

	transaction_instance = Transaction.new(payee, amount, date, category)
	@transactions << transaction_instance
	end

	def list_all_transactions
		transactions.each do |transaction|
			puts "You paid #{transaction.payee} $#{transaction.amount} on #{transaction.date} for #{transaction.category}"
		end
	end

end

account = Account.new

loop do
	account.menu
end
binding.pry