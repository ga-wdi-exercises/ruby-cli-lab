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
  puts "'4' - Delete a transaction"
  input = gets.chomp

  ## Enter New Transaction
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

  ## View Previous Transactions
  elsif input == '2'
    loop do
      $transaction_history.each_with_index {|transaction, i| puts "#{i + 1} - ATM #{transaction.type == 'debit' ? '-' : '+'}#{transaction.amount}, CATEGORY: #{transaction.category}, TYPE: #{transaction.type}, DATE OF TRANSACTION: #{transaction.date}"}
      puts "Would you like to make a transaction? 'y'/'n'"
      again = gets.chomp
      if again == 'y'
        next
      else
        break
      end
    end

  ## View Current Balance
  elsif input == '3'
    puts $transaction_amount.reduce(:+)

  ## Delete Transaction
  elsif input == '4'
    loop do
      $transaction_history.each_with_index {|transaction, i| puts "#{i + 1} - ATM #{transaction.type == 'debit' ? '-' : '+'}#{transaction.amount}, CATEGORY: #{transaction.category}, TYPE: #{transaction.type}, DATE OF TRANSACTION: #{transaction.date}"}
      puts "Type the number of the transaction you would like to delete. Press 'quit' to return to the main menu."
      input = gets.chomp
      if input == i
        $transaction_history.delete_if{|i| input == i - 1}
      elsif input == 'quit'
        break
      end
    end

  end
  break if input == 'quit'

end
# binding.pry
