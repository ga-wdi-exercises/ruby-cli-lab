require('pry')
require('terminal-table')
require_relative "data"
require_relative "models/transaction"
require_relative "models/savings"
require_relative "models/checking"
require_relative "graphics"
require_relative "seeds"

puts $title

$end_loop = true



class Account
  attr_accessor :transactions, :balance

  def initialize
    @transactions = []
    @balance = 0
  end

  def show_options
      puts $starting_options
      input = gets.chomp
      if(input == '1')
        enter_new_transaction
      elsif (input == '2')
        view_transactions
      elsif (input == '3')
        delete_transaction
      elsif (input == '4')

      elsif input == 'quit'
        end_loop
      end
  end

  def enter_new_transaction
    puts 'enter transaction amount'
    amount = gets.chomp
    puts 'enter transaction category'
    category = gets.chomp
    puts 'credit or debit (c/d)'
    type = gets.chomp == 'c' ? 'credit' : 'debit'
    @transactions.push(Transaction.new(amount, category, type))
  end

  def find_total
    total_balance = 0
    @transactions.each_with_index do |item, index|
      if @transactions[index].type == 'credit'
        total_balance -= @transactions[index].amount
      else
        total_balance += @transactions[index].amount
      end
    end
    @balance = total_balance
  end

  def view_transactions
    rows = []
    find_total
    @transactions.each_with_index do |item, index|
      amt = @transactions[index].amount
      cat = @transactions[index].category
      type = @transactions[index].type
      date = @transactions[index].date
      rows << ["#{index + 1}", "#{date}", "#{cat}", "#{type}", "#{amt}"]
    end
    rows << ['Balance', "", "", "", "#{@balance}"]
    transaction_tab = Terminal::Table.new :title => "Your Account", :headings => ['#', 'Date', 'Category', 'Type', 'Amount' ], :rows => rows, :style => {:width => 80}
    puts transaction_tab
  end

  def delete_transaction
    puts "Give the number of the transaction you would like to delete:"
    user_input = gets.chomp.to_i
    @transactions.delete_at(user_input - 1)
  end

  def end_loop

  end
end



$account = Account.new

loop do
  $account.show_options
end

binding.pry
