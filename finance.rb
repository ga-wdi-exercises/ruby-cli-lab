class User
  def initialize name
    @name = name
    @balance = 0
    @history = []
  end
  def transact payee, type, amount, date
    id = Transaction.new payee, type, amount, date
    @history << id
    @balance = @balance.to_i + @amount.to_i
    #why is ^ line printing the balance before the transaction?
  end
  def history
    puts @history.inspect
  end
  def printBalance
    puts @balance
  end
end

class Transaction
  attr_accessor :payee, :type, :amount, :date
  def initialize payee, type, amount, date
    @payee = payee
    @amount = amount
    @date = date
    @type = type
    if @type == "Deposit"
      @amount = amount.to_i
      puts @amount
    end
    if @type == "Withdraw"
      @amount = -(amount.to_i)
      puts @amount
    end
  end
end

liza = User.new "Liza"
liza.transact "Mom", "Deposit", "200", "today"
liza.transact "Mom", "Withdraw", "100", "today"
liza.history
liza.printBalance
