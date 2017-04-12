class Menu
  def self.display
    while 1
      puts "Choose one of the following:"
      puts "To initiate a transaction, press 1."
      puts "To "
      puts "3 - Option 3"
      input = gets.chomp
      if input == "1"
        puts "Please enter username."
        get_name = gets.chomp
        name = instance_variable_set("@#{get_name}", :something)
        puts name
        puts "Please enter transaction type."
        type = gets.chomp
        puts "Please enter amount."
        amount = gets.chomp
        name.transact "x", type, amount, "today"
        name.history
        break
      elseif input == "2"
        self.select input
        break
      elseif input == "3"
        self.select input
        break
      else
        puts "Invalid option."
      end
    end
  end
  def self.select number
    puts "You selected #{number}"
  end
end

Menu.display

class User
  attr_accessor :balance
  def initialize name
    @name = name
    @balance = 0
    @history = []
  end
  def transact payee, type, amount, date
    c = Transaction.new payee, type, amount, date
    @history << c
    if type == "Deposit"
      amount = amount.to_i
    end
    if type == "Withdraw"
      amount = -(amount.to_i)
    end
    @balance = @balance + amount.to_i
    puts @balance
  end
  def history
    puts @history.inspect
  end
  def printBalance
    puts @balance
  end
  def delete index
    @history.delete_at(index)
  end
end

class Transaction
  attr_accessor :payee, :type, :amount, :date
  def initialize payee, type, amount, date
    @payee = payee
    @amount = amount.to_i
    @date = date
    @type = type
  end
end

liza = User.new "Liza"
liza.transact "Mom", "Deposit", "200", "today"
liza.transact "Mom", "Withdraw", "100", "today"
liza.printBalance
liza.history
liza.delete(1)
liza.history
