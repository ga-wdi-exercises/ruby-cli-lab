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
  return "Here is your transaction history " + @@all.each_with_index.map{|transaction|
    "payee " + transaction.payee
  }.join("/n") ##make sure they jump to a new line
  end
  def edit

  end
end
## now we gotta create an instance method to actually edit the transaction's themselves.
first = Transaction.new("Bob", "$200", "2/12/16", "Deposit")
second = Transaction.new("Steve", "$200", "6/16/14", "Deposit")
binding.pry
