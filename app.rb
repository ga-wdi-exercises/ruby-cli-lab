
# Make this a method that makes a new banker with input
class Banker

  attr_accessor :checking, :savings, :checking_date, :savings_date, :transaction

  def initialize(name)
    @name = name
    # @checking = []
    # @checking_date = []
    # @savings = []
    # @savings_date = []
    @total = []

  end
  #
  # def transaction_checking(amt,date)
  #     @checking << amt
  #     @checking_date << date.to_s
  # end
  #
  # def transaction_savings(amt,date)
  #     @savings << amt
  #     @savings_date << date.to_s
  # end
  #
  # def check_transaction_checking
  #     puts @checking
  #     puts @checking_date
  # end
  #
  # def check_transaction_savings
  #     puts @savings
  #     puts @savings_date
  # end
  #
  # def check_balance_checking
  #     puts @checking.sum
  # end
  #
  # def check_balance_savings
  #     puts @savings.sum
  # end

  def transaction(amt, category, date)

    container = {
      amt: amt,
      category: category,
      date: date
    }

    @total << container
  end

  def check_transaction
    puts @total

  end


end

savraj = Banker.new("Savraj Singh")


puts "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
puts "Hello, Welcome to FINANCIAL INDEPENDENCE."
puts "You are still poor homie, what would you like to do?"
puts "1.Start Up 2.Keep on adding 3.Check Total Transaction History"
puts "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"



# Make this a method
# user_input = nil
#
# while user_input != 0
#
#   user_input = gets.chomp.to_i
#
# if user_input == 1
#   puts "Alright man. You have bad spending habits"
#   puts savraj.check_transaction_checking
# elsif user_input == 2
#   puts "Lol you do not know how to save."
#   puts savraj.check_transaction_savings
# elsif user_input == 3
#   puts "How much you got?"
#   amt = gets.to_i
#   puts "Add a date too homie"
#   date = gets.to_s
#   savraj.transaction_checking(amt,date)
# elsif user_input == 4
#   puts "How much you got?"
#   amt = gets.to_i
#   puts "Add a date too homie"
#   date = gets.to_s
#   savraj.transaction_savings(amt,date)
# elsif user_input == 1
#     puts "Alright man. Get ready for the pain"
#     puts savraj.check_balance_checking
# elsif user_input == 2
#     puts "Lol you do not know how to save."
#     puts savraj.check_balance_savings
# end
# end

user_input = nil

while user_input != 0

  user_input = gets.chomp.to_i

if user_input == 1
  puts "Alright man. Time to set up a category. Make sure to add an initial amount and date!"
  puts "Name the category"
  category = gets
  puts "Next add an initial budget"
  amt = gets
  puts "Finally add a date"
  date = gets
  puts "Awesome blossom you're on your way."
  savraj.transaction(amt, category, date)
elsif user_input == 2
  
  puts "Name the category"
  category = gets
  puts "Next add the amount you spent or saved"
  amt = gets
  puts "Finally add a date"
  date = gets
  puts "Awesome blossom you're on your way."
  savraj.transaction(amt, category, date)

elsif user_input == 3
  puts "You want to check your entire transaction history?"
  puts savraj.check_transaction

end
end
