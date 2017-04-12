require "pry"

# class Bank

	# class Patron
	# 	attr_accessor :full_name

	# 	def initialize(full_name)
	# 		# @first_name = first_name
	# 		# @last_name = last_name
	# 		@full_name = full_name
	# 		full_name = ""
	# 	end
	# end

	class Account
		attr_accessor :account_number, :account_balance

		def initialize(full_name, account_number, account_balance)
			@full_name = full_name
			@account_number = account_number
			@account_balance = account_balance
		end
	end

	class Transaction
		attr_accessor :trans_id, :trans_amount, :trans_date, :trans_type, :category, :transactions

		def initialize(trans_id, trans_amount, trans_date, trans_type, category)
			@trans_id = trans_id
			@trans_amount = trans_amount
			@trans_date = trans_date
			@trans_type = trans_type
			@category = category
			@transactions = transactions
			transactions = []
		end

		def self.deposit()
			puts "How much would you like to deposit today?"
			trans_amount = gets.chomp.to_i

			puts "What is this deposit for?"
			category = gets.chomp.to_s

			@account_balance = @account_balance + trans_amount
			puts "New Balance: #{@account_balance}"
			transactions << {trans_id: Date.new, trans_date: Time.now.strftime("%d/%m/%Y %H:%M"), trans_amount: amount, trans_type: deposit, category: category} 
		end

		def self.withdrawal()
			puts "How much would you like to withdraw today?"
			trans_amount = gets.chomp.to_i

			puts "What is this withdrawal for?"
			category = gets.chomp.to_s

			@account_balance = @account_balance - trans_amount
			puts "New Balance: #{@account_balance}"
			transactions << {trans_id: Date.new, trans_date: Time.now.strftime("%d/%m/%Y %H:%M"), trans_amount: amount, trans_type: withdrawal, category: category}
		end
	end 

class Menu
  def self.display
  	num = 123456789
    while num != 0
      puts "Choose one of the following:"
      puts "1 - Get Balance"
      puts "2 - Make Deposit"
      puts "3 - Make Withdrawal"
      puts "0 - Exit out of the system"
      input = gets.chomp
      if ["1","2","3"].include? input
        self.select input

        elsif input == 1
			Account.account_balance

		elsif input == 2
			Transaction.deposit

		elsif input == 3
			Transaction.withdrawal
		# end

        # break
      else
        puts "Invalid option."
      end
    end
  end
  def self.select number
    puts "You selected #{number}"
  end
end



Menu.display




binding.pry

