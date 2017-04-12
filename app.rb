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

$transactions_list = []

def new_transaction
puts "enter the payee (just the name)"
payee = gets.chomp
puts "enter the amount spent (just the number)"
amount = gets.chomp.to_i
puts "enter the date (as number mmddyy)"
date = gets.chomp.to_i
puts "enter the category (just the word)"
category = gets.chomp

transaction_instance = Transaction.new(payee, amount, date, category)
$transactions_list << transaction_instance
end




binding.pry