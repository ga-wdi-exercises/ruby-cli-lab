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
        edit_transaction
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
    rows << :separator
    rows << ['Balance', "", "", "", "#{@balance}"]
    transaction_tab = Terminal::Table.new :title => "Your Account", :headings => ['#', 'Date', 'Category', 'Type', 'Amount' ], :rows => rows, :style => {:width => 80}
    puts transaction_tab
    puts "\n\n"
  end

  def delete_transaction
    view_transactions
    puts "Give the number of the transaction you would like to delete:"
    user_input = gets.chomp.to_i
    @transactions.delete_at(user_input - 1)
  end

  def edit_transaction
    view_transactions
    puts "Enter the number of the element you would like to edit:"
    user_input = gets.chomp.to_i
    edit_tran = @transactions.at(user_input - 1)
    amt = edit_tran.amount
    cat = edit_tran.category
    type = edit_tran.type
    amt = edit_tran.amount
    puts "What would you like to edit? (enter the number)"
    puts "1:#{amt} | 2:#{cat} | 3:#{type}"
    user_input = gets.chomp

    # BUG: not accepting changes by the user
    if user_input == "1"
      puts "Enter the change:"
      user_input  = gets.chomp
      @transactions.at(user_input - 1).amount = user_input
    elsif user_input == "2"
      puts "Enter the change:"
      user_input  = gets.chomp
      @transactions.at(user_input - 1).category = user_input
    elsif user_input == "3"
      puts "Enter the change: (c/d)"
      user_input  = gets.chomp
      @transactions.at(user_input - 1).type = user_input = gets.chomp == 'c' ? 'credit' : 'debit'
    end

  end

'#', 'Date', 'Category', 'Type', 'Amount'
  def sort_transactions
    view_transactions
    puts "\nWhat would you like to sort? 1: # | 2: Date | 3: Category | 4. Type | 5: Amount "
    user_input = gets.chomp.to_i
    edit_tran = @transactions.at(user_input - 1)
    amt = edit_tran.amount
    cat = edit_tran.category
    type = edit_tran.type
    amt = edit_tran.amount
  end

  def end_loop

  end
end



$account = Account.new

loop do
  $account.show_options
end

binding.pry
