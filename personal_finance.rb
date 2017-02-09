# require "pry"
puts "Please enter the name of payee, amount and category."

class Transaction
  attr_accessor :payee, :amount, :date, :category, :transactions

  def initialize(payee, amount, category)
    @payee = payee
    @amount = 0
    @@date = Time.now.strftime("%d/%m/%Y %H:%M")
    @category = nil
    @transactions = []
  end

  def self.add_transaction(payee, amount, category)
    puts "Please enter the name of payee, amount and category."
    @transactions << {payee: payee, amount: amount, date: date, category: category}
  end

  def begin
    puts "Welcome to Personal Finance. How can we assist you today?"
    options = [{selection: "1. New Transaction."}, {selection: "2. View All Transactions."}, {selection: "3. Edit Transactions."}, {selection: "4. Delete Transactions."}, {selection: "5. View Current Balance."}, {selection: "6. View Transactions By Category."}]

    # finance_on = true
    # while finance_on = true

    options.each {|option| puts option[:selection]}
    puts "Enter the option number."
    input = gets.chomp

    if input == "1"
      Transaction.add_transaction
    elsif input == "2"
      if transactions == []
        puts "No transaction history."
      else
      end
    elsif input == "3"

    elsif input == "4"

    elsif input == "5"

    elsif input == "6"

    else
      puts "Invalid option."
    end
  end
# end
end

# Transaction.new("John Smith", "$100", "Debit")
# binding.pry
