class User
  attr_accessor :name, :balance
  @@user_name = []

  def initialize(name)
    @name = name
    @balance = 0
    @@user_name << self
  end

  def self.list_user
    @@user_name
  end

  def deposit
    puts "*"*60 + "\nHow much would like to deposit?"
    user_input = gets.chomp.to_i
    self.balance += user_input
    puts "*"*60 + "\nYour remaining balance is $#{self.balance}"
  end

  def withdraw
    puts "*"*60 + "\nHow much would like to withdraw?"
    user_input = gets.chomp.to_i
    self.balance -= user_input
    puts "*"*60 + "\nYour remaining balance is $#{self.balance}"
  end
end


# 
# class Transaction < User
#   attr_accessor :payee, :amount, :date, :category
#   def initialize(name, payee, amount, date, category)
#     super (name)
#     @payee = payee
#     @amount = amount
#     @date = date
#     @category = category
#   end















$current_user = nil


def creat_new_user
  puts "*"*60 + "\nplease enter the user name that you would like to use"
  user_input = gets.chomp
  user_input = User.new(user_input)
  puts "\n#{user_input.name} can now access our system."
end


def main_option
  while true
  puts "*"*60 + "\nSelect one of the following options
  \n1. deposit
  \n2. withdraw
  \n3. balance
  \n4. transaction history
  \n5. Logout and login as another user\n"+ "*"*60
  user_input = gets.chomp
  case user_input.downcase
  when "1"
    $current_user.deposit
  when "2"
    $current_user.withdraw
  when "3"
    puts "*"*60 + "\nYour current balance is $#{$current_user.balance}"
  when "4"
    puts "transaction"
  when "5"
    initiate_mode
  else
    puts "*"*60
    main_option
  end
  break if user_input.downcase == "done"
  end
end

def initiate_mode
  puts "*"*60 + "\nWelcome to Personal Finance Program"
  while true
    current_user = nil
    puts "*"*60 + "\nPlease enter your user name\nUsers created so far: #{User.list_user.map{|user| user.name}}
    \n(If you are a new user, please enter\'New\')"
    user_input = gets.chomp
    if user_input.downcase == "new"
      creat_new_user
    elsif  User.list_user.find {|user| user_input == user.name}
      $current_user = User.list_user.find {|user| user_input == user.name}
      puts "*"*60 + "\nwelcome #{user_input}"
      break
    end
   break if user_input.downcase == "quit"
  end
end



initiate_mode
main_option
