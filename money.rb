
 # see a list of all transactions
 # edit / delete transactions, and see their current balance.
 #  look at transactions by category and see the total 'cost' of transactions 
 #  support debits and credits
#     ____                                   __   _______
#    / __ \___  ______________  ____  ____ _/ /  / ____(_)___  ____ _____  ________
#   / /_/ / _ \/ ___/ ___/ __ \/ __ \/ __ `/ /  / /_  / / __ \/ __ `/ __ \/ ___/ _ \
#  / ____/  __/ /  (__  ) /_/ / / / / /_/ / /  / __/ / / / / / /_/ / / / / /__/  __/
# /_/    \___/_/  /____/\____/_/ /_/\__,_/_/  /_/   /_/_/ /_/\__,_/_/ /_/\___/\___/
class Menu
  def self.display
    while 1
    	puts "Welcome to Personal Finance"
    	puts "1 to enter Transaction"
		puts "2 to see Transaction History"
		puts "3 "
		puts "4 "
		puts "5 "
      input = gets.chomp
      if ["1","2","3"].include? input
        self.select input
        break
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

require "pry"
class Transaction
	attr_accessor :payee,:amount,:date,:category

	def initialize(payee,amount,date,category)
		@payee, @amount, @date, @category = payee,amount,date,category
	end
end

class Tracker
	attr_accessor :history,:payee,:amount,:date,:category
	def initialize()
		@payee, @amount, @date, @category = payee,amount,date,category
		@history = []
	end
	def add_transaction in_payee,in_amount,in_date,in_category
		@history.push({
			payee: in_payee,amount: in_amount,date: in_date,category: in_category
			})
	end
end

my_history = Tracker.new
# test = Transaction.new("Lowes",250,"5/21/2017","Home Improvement")

binding.pry

sorted = my_history.history.sort_by { |k| k["date"] }
puts sorted









