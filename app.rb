require 'pry'

class Transaction
	attr_accessor :payee, :amount, :date, :category, :type
	def initialize(payee, amount, date, category, type)
		@payee = payee
		@amount = amount
		@date = date
		@category = category
		@type = type
	end

	# def list_payee
	# 	puts "This was paid to #{payee}"
	# end
	# def list_amount
	# 	puts "The amount paid was #{amount}"
	# end
	# def list_date
	# 	puts "This was paid on #{date}"
	# end
	# def list_category
	# 	puts "The category of spending was #{category}"
	# end

end


class Account
	attr_accessor :transactions, :balance
	def initialize
		@transactions = []
		@balance = 0
	end

	def menu
		puts "Welcome.  \nEnter 1 to enter a new transaction.  \nEnter 2 to view all transactions.  \nEnter 3 to view transaction by category.  \nEnter 4 to delete a transaction.  \nEnter 5 to view balance."
		menu_choice = gets.chomp.to_i
		if menu_choice == 1
			new_transaction
		elsif menu_choice == 2
			list_all_transactions
		elsif menu_choice == 3
			list_by_category
		elsif menu_choice == 5
			show_balance
		end
	end

	def new_transaction
	puts "Enter the payee (just the name)"
	payee = gets.chomp
	puts "Enter the amount spent/received (just the number)"
	amount = gets.chomp.to_i
	puts "Enter the date (as number mmddyy)"
	date = gets.chomp.to_i
	puts "Enter the category (just the word)"
	category = gets.chomp
	puts "Enter 'd' for deposit and 'w' for withdrawal"
	type = gets.chomp

	transaction_instance = Transaction.new(payee, amount, date, category, type)
	@transactions << transaction_instance

	if type == "d"
		@balance += amount
	elsif type == "w"
		@balance -= amount
	end

	end

	def list_all_transactions
		transactions.each do |transaction|
			puts "You paid/got from #{transaction.payee} $#{transaction.amount} on #{transaction.date} for #{transaction.category}"
		end
	end

	def list_by_category
		puts "Enter the category"
		category_input = gets.chomp

		category_matches = transactions.find_all {|transaction| transaction.category == category_input}
		category_matches.each do |match|
			puts "You paid/got from #{match.payee} $#{match.amount} on #{match.date} for #{match.category}"
		end

	end




	def show_balance
		puts "Your current account balance is $#{balance}"
	end

end

account = Account.new

loop do
	account.menu
end
binding.pry