# require 'pry'
require_relative "transaction.rb"

$transaction_history = []
$categories = []
$transaction_amount = []

loop do
  puts "Welcome to Personal Finance!"
  puts "'1' - Enter a new transaction"
  puts "'2' - View previous transactions"
  puts "'3' - View balance"
  input = gets.chomp

  if input == '1'
    ## Enter amount
    loop do
      puts "Enter Payee Name"
      payee = gets.chomp

      puts "Enter transaction amount"
      amount = gets.chomp.to_i
      $transaction_amount.push(amount)

      ## Enter Category
      puts "Enter a category"
      category = gets.chomp
      $categories.push(category)

      ## Choose Transaction Type
      puts "Type 'c' for credit or 'd' for Debit?"
      type = gets.chomp == 'c' ? 'credit' : 'debit'
      $transaction_history.push(Transaction.new(payee, amount, category, type))

      ## Prompt if you want to make another transaction or return to the main menu
      puts "Would you like make another transaction? 'y'/'n"
      again = gets.chomp
      if again == 'y'
        next
      else
        break
      end

    end

  elsif input == '2'
    loop do
      $transaction_history.each {|transaction| puts "ATM #{transaction.type == 'debit' ? '-' : '+'}#{transaction.amount}, CATEGORY: #{transaction.category}, TYPE: #{transaction.type}, DATE OF TRANSACTION: #{transaction.date}"}
      puts "Would you like to make a transaction? 'y'/'n'"
      again = gets.chomp
      if again == 'y'
        next
      else
        break
      end
    end
  elsif input == '3'
    ##view current balance
    # $transaction_history.reduce {|transaction| transaction.amount}
    puts $transaction_amount.reduce(:+)
  end
  break if input == 'quit'
end
# binding.pry
