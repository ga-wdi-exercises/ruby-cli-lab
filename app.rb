class Transaction
  attr_accessor :payee, :amount, :date, :category
  def initialize (amount, payee, date, category)
    @payee = amount
    @amount = payee
    @date = date
    @category = category
  end

end



class User < Transaction
  attr_accessor :name, :balance, :transactions
  @@user_name = []

  def initialize(name)
    @name = name
    @balance = 0
    @transactions = []
    @@user_name << self
  end

  def self.list_user
    @@user_name
  end

  def deposit
    puts "*"*60 + "\nHow much was your deposit?"
    user_input = gets.chomp.to_i
    self.balance += user_input
    @transactions << Transaction.new("-", self.balance, "-", "deposit")
    puts "*"*60 + "\nYour remaining balance is $#{self.balance}"

  end

  def withdraw
    puts "*"*60 + "\nHow much did you withdraw?"
    user_input = gets.chomp.to_i
    self.balance -= user_input
    puts "*"*60 + "\nYour total balance is $#{self.balance}"
  end


  def new_transaction
    puts "How much was it?"
    amount = gets.chomp.to_i
    puts "Please enter payee's name"
    payee = gets.chomp
    puts payee
    puts "When was this transaction?"
    date = gets.chomp
    puts "Please enter the type of this transaction"
    category = gets.chomp
    @transactions << Transaction.new(payee, -(amount), date, category)
    puts
  end

  def view_transaction
    self.transactions.each_with_index do |transaction, index|
      puts "#{index}. Payee:#{transaction.payee} | Date:#{transaction.date} | Amount:$#{transaction.amount} | Category:#{transaction.category}"
    end
  end

  def delete_transaction

  end


end







$current_user = nil


def initiate_mode
  puts "*"*60 + "\nWelcome to Personal Finance Program"
  while true
    current_user = nil
    puts "*"*60 + "\nPlease enter your user name
    \nUsers created so far: #{User.list_user.map{|user| user.name}}
    \n(If you are a new user, please enter\'New\')"
    user_input = gets.chomp
    if user_input.downcase == "new"
      creat_new_user
    elsif  User.list_user.find {|user| user_input == user.name}
      $current_user = User.list_user.find {|user| user_input == user.name}
      puts "*"*60 + "\nwelcome #{user_input}"
      break
    end
  end
end


def creat_new_user
  puts "*"*60 + "\nplease enter the user name that you would like to use"
  user_input = gets.chomp
  user_input = User.new(user_input)
  puts "\n#{user_input.name} can now access our system."
end


def main_option
  while true
  puts "*"*60 + "\nSelect one of the following options
  \n1. Deposit
  \n2. Withdraw
  \n3. Balance
  \n4. Transaction/transaction history
  \n5. Logout and login as another user
  \n6. End Program\n"+ "*"*60
  user_input = gets.chomp
      case user_input.downcase
      when "1"
        $current_user.deposit
      when "2"
        $current_user.withdraw
      when "3"
        puts "*"*60 + "\nYour current balance is $#{$current_user.balance}"
      when "4"
        payment_option
      when "5"
        initiate_mode
      when "6"
        break
      else
        puts "*"*60
        main_option
      end
  end
end


def payment_option
    while true
    puts "*"*60 + "\nSelect one of the following options
    \n1. New transaction
    \n2. View transaction
    \n3. Delete transaction
    \n4. Back to main menu\n"+ "*"*60
    user_input = gets.chomp

        case user_input.downcase
        when "1"
          $current_user.new_transaction
        when "2"
          $current_user.view_transaction
        when "3"
          $current_user.delete_transaction
        when "4"
          break
        else
          puts "*"*60
        end
    end
end



initiate_mode
main_option
