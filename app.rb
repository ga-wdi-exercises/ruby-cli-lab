require "pry"

class Customer
  attr_accessor :name
  def initialize(name)
    @name = name
  end

  def introduce
    puts "Hello, my name is #{@name}."
  end
end

class Account < Customer
  # attr_accessor :amount, :date, :category
  # attr_reader :updated_amount
  attr_accessor :balance, :date
  def initialize(balance)
    # @date = Date.new
    @balance = balance
  end
end

class Transaction < Account
  attr_accessor :type, :amount, :category, :history
  def initialize(name, type, amount, category)
    super(name)
    @type = type
    @amount = amount
    @category = category
    @history = []
    user_info = []
    # info = []
    # new_hash = {name: @name, type: @type, amount: @amount, category: @category}
    # info << new_hash
  end
  # history = []
  def deposit(number)
    @history << "Deposit: #{@amount}"
    @amount += number

  end

  def withdraw(number)
    @history << "Withdraw: #{@amount}"
    @amount -= number

  end

  def history
    @history
  end

  def balance
    @amount
  end
  info = []
  new_hash = {name: @name, type: @type, amount: @amount, category: @category}
puts new_hash
  info << hash
  # @set_up << [{name: @name, type: @type, amount: @updated_amount, category: @category}]
end

kevin = Transaction.new("Kevin", "deposit", 300, ['food','bills'])

binding.pry
