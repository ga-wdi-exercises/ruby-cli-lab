class Transaction_Data
  attr_accessor :payee, :amount, :date, :category
    @@all = []

    def initialize
      puts "First, enter a payee."
        @payee = gets.chomp
      puts "Second, enter an amount."
        @amount = gets.chomp
      puts "Third, enter today's date."
        @date = gets.chomp
      puts "Lastly, enter your category."
        @category = gets.chomp
      @@all.push(self)
      end

      def self.all
        puts @@all
      end
  end

class Transaction_History < Transaction_Data
  def initialize()
    super (@@all)
  end
  def self.history
      puts @@all
    end
  end
class Current_Balance < Transaction_Data

  def self.Balance
    @amount += input
  end
end

  class Menu
    def self.display
      while 1 || 2 || 3
        puts "Choose one of the following:"
        puts "1 - New Transaction"
        puts "2 - Transaction History"
        puts "3 - Current Balance"
        input = gets.chomp.to_i
        if [1,2,3].include? input
          self.select input
          break
        else
          puts "Invalid option."
        end
      end
    end
    def self.select number
      puts "You selected #{number}"
      if number == 1
        puts "Enter Transaction"
        Transaction_Data.new
      end
      if number == 2
        puts "Your Recent Activies"
        Transaction_History.new
      end
      if number == 3
        puts "Current Balance"
        Current_Balance.display
      end
    end
  end

  Menu.display










# class Bank
#   attr_accessor = :payee, :amount, :date, :category
#   @@all = []
#   total_balance = 0
#   def initialize (payee, amount, date, category)
#     @payee = payee
#     @amount = amount
#     @date = date
#     @category = category
#     puts "Choose which account you would like to access:"
#     puts "[1] - Deposit"
#     puts "[2] - Withdraw"
#     puts "[3] - Current balance "
#     puts "[4] - Sort by Category"
#     @input = gets.chomp
#         @@all.push(self)
#   end
#
#   def menu
#     # @input = gets.chomp.to_i
#     # while @input != 0
#     #       puts "Choose which account you would like to access:"
#     #       puts "[1] - Deposit"
#     #       puts "[2] - Withdraw"
#     #       puts "[3] - Current balance "
#     #       puts "[4] - Sort by Category"
#     #       input = gets.chomp
#     if ["1","2","3","4"].include? @input
#       puts "You chose option #{number}"
#         if @input == "1"
#           Bank.deposit
#         elsif @input == "2"
#           Bank.withdraw
#         elsif @input == "3"
#           Bank.all
#         elsif @input == "4"
#         end
#     end
#     end
#   end
#
#   def self.all
#     p @@all
#     # index =0
#     # history = @@all.each do |transaction|
#     #   puts transaction[index]
#     #   index +=1
#     # end
#   end
# #adds money
#   def deposit
#     total_balance += @amount.to_i
#     puts " + #{@amount}"
#   end
# #removes money
#   def withdraw
#     total_balance += @amount.to_i
#     puts "Withdrew #{@amount}. Total Balance is " + total_balance
#   end
#
# # filter by category and see total cost of transactions
#   def self.category
#     @@all.sort_by{|transaction| transaction[:category]}
#   end
# end
#
# Chinese = Bank.new("Chinese",50,"12/10/2016","Dinner")
# Indian = Bank.new("Indian",30,"12/11/2016","Dinner")
#
# Chinese.menu
