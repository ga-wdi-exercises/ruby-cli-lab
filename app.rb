require 'pry'
require_relative "transaction.rb"

$transaction_history = []
$categories = []

loop do
  puts "Welcome to Personal Finance! Would you like to '1' enter a new transaction or '2' view previous transactions?"
  input = gets.chomp

  if input == '1'
    ## Enter amount
    loop do

      puts "Enter transaction amount"
      amount = gets.chomp.to_i

      ## Enter Category
      puts "Enter a category"
      category = gets.chomp
      $categories.push(category)

      ## Choose Transaction Type
      puts "Type 'c' for credit or 'd' for Debit?"
      type = gets.chomp == 'c' ? 'credit' : 'debit'
      $transaction_history.push(Transaction.new(amount, category, type))

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
      $transaction_history.each {|transaction| puts "ATM #{@type == 'debit' ? '-' : '+'}#{transaction.amount[0]}, CATEGORY: #{transaction.category}, TYPE: #{transaction.type}, DATE OF TRANSACTION: #{transaction.date}"}
      puts "Would you like to make another transaction? 'y'/'n'"
      again = gets.chomp
      if again == 'y'
        break
      end
    end
  elsif input == '3'
    ##view current balance
    $transaction_history[:amount].reduce(:+)
  end
  break if input == 'quit'
end
binding.pry
