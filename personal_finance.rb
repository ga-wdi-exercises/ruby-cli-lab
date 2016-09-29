# create a Bank Class
# this class has a method that shows all previous transactions
#each transaction has information about it
# the bank class edits and deletes transactions, and prints out current balance
# the transaction class has information
# =>          payee, amount, a date, and a category(withdraw or deposit?)
# make an empty array, the array will contain all of the transaction
# each of those elements in the array is an object of the transaction informtion
require "pry"



class Transaction
@@all = []
attr_accessor :payee, :amount, :date, :category #allows trans.payee by making it "global"
  def initialize(payee, amount, date, category)
    @payee = payee
    @amount = amount
    @date = date
    @category = category
    @@all.push self
  end
  def self.display
  return "Here is your transaction history " + @@all.map{|transaction|
    "payee " + transaction.payee
  }.each_with_index{|transaction,index| puts "#{transaction} is #{index}"
}.join("/n") ##make sure they jump to a new line
  end


## now we gotta create an instance method to actually edit the transaction's themselves.
  def self.edit
    puts "Who's name did you want to edit?"
    input = gets.chomp.to_i
    if input == 0 #allows them to edit name via index
    puts "What would you like the new name to be?"
    user_input = gets.chomp
    @@all[0].payee = user_input
p @@all[0].payee
    end
    if input == 1
  puts "What would you like the new name to be?"
  user2_input = gets.chomp
  @@all[1].payee = user2_input
  p @@all[1].payee
    end
  end
  def self.delete(payee)
payee = @@all.payee
#how do we make this delete based on the index entered?

  end
  def balance
    @@all.amount
  end
end
# puts "Welcome to The Bank of GA! How can we help you today?
# 1 - Make a transaction
# 2 - Edit a previous Transaction payee
# 3 - Delete a Transaction
# 4 - See the current balance
# "
# input = gets.chomp.to_i
# if input == 1
#   Transaction.initialize
# end


# class EachTransaction < Transaction
#   def info
#     puts @payee
#   end
# end


first = Transaction.new("Bob", "$200", "2/12/16", "Deposit")
second = Transaction.new("Steve", "$200", "6/16/14", "Deposit")
binding.pry
