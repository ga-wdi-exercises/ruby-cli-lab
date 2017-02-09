#Personal Finance

require "pry"
require_relative "methods"

#Main CLI frameword
puts "Welcome to Mike Finances, the best way to manage your personal finances."
def start
  puts "How can I do for you?"
  puts "- To review a list of your current transactions type 1"
  puts "- To add a new transaction type 2"
  puts "- To delete a transaction type 3"
  puts "- To edit an existing transaction type 4"
  puts "- To display current balance type 5"
  puts "- To list transactions by category type 6"
  user_input_main = gets.chomp.to_i
  if user_input_main == 1
    list_transactions
    start
  elsif user_input_main == 2
    puts "Who is the payee of this new transaction?"
    user_input_a = gets.chomp.to_s
    payee = user_input_a
    puts "What is the amount of this new transaction?"
    user_input_b = gets.chomp.to_s
    amount = user_input_b
    puts "what is the date of this new transaction?"
    user_input_c = gets.chomp.to_s
    date = user_input_c
    puts "Which category does this new transaction belong to?"
    user_input_d = gets.chomp.to_s
    category = user_input_d
    add_transaction(payee, amount, date, category)
    puts "Here is the updated list of your transactions:"
    p $transactions
    start
  elsif user_input_main == 3
    puts "Here is the list of your existing transactions:"
    p $transactions
    puts "Please type the index number of the transaction which you want to delete!"
    user_input_e = gets.chomp.to_i
    index = user_input_e
    delete_transaction(index)
    puts "Here is the updated list of your transactions:"
    p $transactions
    start
  elsif user_input_main == 4
    edit_transaction
    start
  elsif user_input_main == 5
    display_balance
    start
  elsif user_input_main == 6
    puts "Which category do you want to select?"
    user_input_f = gets.chomp.to_s
    num = user_input_f
    list_by_category(num)
    start
  else user_input_main == 7
    puts "Sorry, I didn't undersatnd this. You have to put a number between 1 and 6. Please try again!"
    start
  end
end
start

# binding.pry

#The user should be able to quit the command line not lose their transactions.
