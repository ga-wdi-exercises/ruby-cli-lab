
class Menu
  def self.display
    attr_accessor = :input
    def initialize (input)
    end
    while 1 || 2 || 3 || 4
      puts "Choose which account you would like to access:"
      puts "[1] - Deposit"
      puts "[2] - Withdraw"
      puts "[3] - Current balance "
      puts "[4] - Sort by Category"
      input = gets.chomp
      if ["1","2","3","4"].include? input
        self.select input
        break
      else
        puts "Invalid option. Try again."
      end
    end
  end
  def self.select number
    puts "You chose option #{number}"
  end
end
Menu.display

# class Bank
#   attr_accessor = :payee, :amount, :date, :category
#   account = []
#   def initialize (payee, amount, date, category)
#     @payee = payee
#     @amount = amount
#     @date = date
#     @category = category
#   end
#
#   def self.list_transactions
#     account << self
#     puts account
#   end
# #adds money
#   def deposit
#
#   end
# #removes money
#   def withdraw
#
#   end
#
# # filter by category and see total cost of transactions
#   def category
#   end
# end
#
# Eva = Bank.new("Eva",50,"12/10/2016","Dinner")

# bonus
# class Checking extends Bank
#   def initialize
#   end
# end
#
# class Savings extends Bank
#   def initialize
#   end
# end
